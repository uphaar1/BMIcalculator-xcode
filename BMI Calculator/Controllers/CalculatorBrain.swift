//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sharma, Uphaar on 11/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain{
    var bmi: BMI?
    func getBMIValue() -> String{
        let ans = String(format: "%.1f",bmi?.value ?? 0.0)
        return ans
    }
    func getAdvice()  -> String{
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    mutating func calculateBMI(height: Float,weight: Float){
        let bmiValue = weight / (height*height)
        print("Value is \(bmiValue)")
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        }else if bmiValue < 24.9{
                bmi = BMI(value: bmiValue, advice: "you are fit!", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
        
    }
}
