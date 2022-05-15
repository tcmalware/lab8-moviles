//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token  = "BQCyo3HRh1HY-1jAvQqLzx1T2CM3egWqPYWNqEhMcnD5a6I1oB4wHonJf0fh_iTdIdMBVIK4y5XGVmVlWRSeLzNy1Ble28XBdOBM6oXcEl3JJW4-l7nm1XUa7SdQS_pmSQyMo8UtZDyd96oop2C2qyw52q7w4ysFAzzJ-HXyp-5xAjrJ8w"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
