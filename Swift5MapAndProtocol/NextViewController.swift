//
//  NextViewController.swift
//  Swift5MapAndProtocol
//
//  Created by 山本宰 on 2021/01/23.
//

import UIKit


protocol SearchLocationDelegate{
    func searchLocation(idoValue:String, keidoValue: String)
}


class NextViewController: UIViewController {

    @IBOutlet weak var idoText: UITextField!
    @IBOutlet weak var keidoText: UITextField!
    
    var delegate:SearchLocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func okAction(_ sender: Any) {
        
        let idoValue = idoText.text!
        let keidoValue = keidoText.text!
        
        
        if idoText.text != nil && keidoText.text != nil{
            delegate?.searchLocation(idoValue: idoValue, keidoValue: keidoValue)
            dismiss(animated: true, completion: nil)
        }

    }
    
}
