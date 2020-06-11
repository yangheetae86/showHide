//
//  ContentView.swift
//  showHide
//
//  Created by HEE TAE YANG on 2020/06/11.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var truefalse = false
    
    var body: some View {
        
        VStack {
            if self.truefalse {
                Text("메디콜 공중전화1")
            } else {
                Text("메디콜 공중전화1").hidden()
            }
            
            if self.truefalse {
                Text("메디콜 공중전화2").hidden()
            } else {
                Text("메디콜 공중전화2")
            }
            
            ShowHidden(truefalse: $truefalse)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ShowHidden: View {
    @Binding var truefalse: Bool
    
    var body: some View {
        Button(action: {
            self.truefalse = !self.truefalse
        }){
            Text("버튼")
        }
    }
}
