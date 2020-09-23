Feature: Validating place API's
@AddPlace
Scenario Outline: Verify if place is being Succesfully added using AddPlaceAPI

Given Add place payload with "<name>" "<language>" "<address>"
When user calls "AddPlaceAPI" with "POST" http request
Then the API call got success with status code 200
And "status" in response body is "OK"
And "scope" in response body is "APP"
And verify place_Id created maps to "<name>" using "getPlaceAPI"
Examples:

  |name      | language    | address            |
  |sweetHome | Telugu      | world cross center |
# |AAhome    | Hindi       | Global Center      |

@DeletePlace
Scenario: Verify if Delete place functionality is working

Given DeletePlace Payload
When user calls "deletePlaceAPI" with "POST" http request
Then the API call got success with status code 200
And "status" in response body is "OK"