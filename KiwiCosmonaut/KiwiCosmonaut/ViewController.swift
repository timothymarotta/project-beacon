//
//  ViewController.swift
//  KiwiCosmonaut
//
//  Created by Timothy Marotta on 4/20/21.
//

import UIKit
import RealityKit

class ARViewScene: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadLevelOne()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
