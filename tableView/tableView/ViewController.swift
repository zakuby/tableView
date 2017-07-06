//
//  ViewController.swift
//  tableView
//
//  Created by admin on 7/6/17.
//  Copyright © 2017 indosystem. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    let list = ["Satu", "Dua", "Tiga", "Empat"]
    let animals = ["serigala", "Husky"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (animals.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: (animals[indexPath.row] + ".jpg"))
        cell.myLabel.text = animals[indexPath.row]
        return (cell)
    }

}

