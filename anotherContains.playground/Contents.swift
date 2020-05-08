import Foundation

extension String {
    
    // Crete function
    func anotherContains(_ substring: String) -> Bool {
        let length = substring.count
        var stringArray: [String] = []
        var substringArray: [String] = []
        
        if length > self.count {
            return false
        } else if length == self.count {
            if substring.uppercased() == self.uppercased() {
                return true
            } else {
                return false
            }
        }
        
        // checking to see if the substring is empty
        // self is String
        if self.uppercased().firstIndex(of: substring.uppercased()[startIndex]) == nil {
            return false
        }
    
        for character in self {
            stringArray.append(character.description)
        }
        
        for character in substring {
            substringArray.append(character.description)
        }
        
        for i in 0...(stringArray.count - length) {
            var isEqual = true
            
            for n in 0..<length {
                if stringArray[i + n].uppercased() != substringArray[n].uppercased() {
                    isEqual = false
                    break
                }
            }
            if isEqual == true {
                return true
            }
        }
        return false
    }
}

print("abc".anotherContains("abc"))
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false
print("Where is thomas".anotherContains("ThOmAs")) // true
print("where thomasis".anotherContains("thOMAS")) // true

