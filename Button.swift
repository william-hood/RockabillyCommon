// ******************************************************************************
//  * Copyright (c) 2016 William Arthur Hood
//  * 
//  * Permission is hereby granted, free of charge, to any person obtaining a copy
//  * of this software and associated documentation files (the "Software"), to deal
//  * in the Software without restriction, including without limitation the rights to
//  * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
//  * of the Software, and to permit persons to whom the Software is furnished
//  * to do so, subject to the following conditions:
//  * 
//  * The above copyright notice and this permission notice shall be included
//  * in all copies or substantial portions of the Software.
//  * 
//  * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  * OTHER DEALINGS IN THE SOFTWARE.
//  *****************************************************************************


public class Button : WebInterfaceControl { 
	private var content: String! = nil

	public init(text: String) {
		content = text
	}

    public var style: String? {
		return nil
	}
    
    // Can override to "submit" or "reset"
    public var buttonType: String {
		return "button"
	}

    public var htmlRendition: String {
		var result = "<button "
		result.append("type=\"")
		result.append(buttonType)
		result.append("\"")
        
        if style != nil {
			result.append(" style=\"")
			result.append(style!)
			result.append(";\"")
		}
        
		result.append(">")
		result.append(content)
		result.append("</button>")
		return result
	}
}

