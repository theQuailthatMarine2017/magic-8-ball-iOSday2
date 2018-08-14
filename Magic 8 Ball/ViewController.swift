//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by RastaOnAMission on 13/08/2018.
//  Copyright © 2018 ronyquail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballsArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber: Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMessage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        loadMessage()
    }
    
    func loadMessage() {
        randomBallNumber = Int(arc4random_uniform(4))
        
        imageView.image = UIImage(named: ballsArray[randomBallNumber])
    }

    @IBAction func askButtonPress(_ sender: UIButton) {
        loadMessage()
    }
    
}

