//
//  ViewController.swift
//  EzZing
//
//  Created by iOS Student on 12/28/16.
//  Copyright © 2016 tek4fun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl_zing: UILabel!
    @IBOutlet weak var img_logo: UIImageView!
    @IBOutlet weak var lbl_name: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img_logo!.alpha = 0
        lbl_zing!.alpha = 0
        lbl_name!.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.img_logo!.alpha = 1
            }, completion: { (finished) in
                UIView.animate(withDuration: 3, animations: {
                    self.lbl_zing!.center = CGPoint(x: self.img_logo!.center.x, y: 100)
                    self.lbl_zing!.alpha = 1
                    }, completion: { (finished) in
                        UIView.animate(withDuration: 3, animations: {
                            self.lbl_name!.center = CGPoint(x: self.img_logo!.center.x, y: 600)
                            self.lbl_name!.alpha = 1
                        })
                })
        })
    }
}

