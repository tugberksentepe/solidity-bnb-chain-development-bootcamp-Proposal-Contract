// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

library Counters {
    
    struct Counter {
        uint number;
        string description;
    }

    // Constructor runs one when we deploy the contract.
    // We are setting the owner of the contract to the sender of the transaction and also
    // We are creating the counter with the given parameters.
    function initializeCounter(uint initial_number, string memory initial_description) internal pure returns (Counter memory) {
        return Counter(initial_number, initial_description);
    }

    // This function increments the number field of the counter
    // It is an external function meaning it can only be called outside of this contract
    // Also it can only be called by the owner, which is declared with the onlyOwner keyword
    // Which corresponds to the onlyOwner modifier
    function increment(Counter storage self) internal {
        self.number += 1;
    }

    // This function decrements the number field of the counter
    // It is an external function meaninig it can only be called outside of this contract
    // Also it can only be called by the owner, which is declared with the onlyOwner keyword
    // Which corresponds to the onlyOwner modifier
    function decrement(Counter storage self) internal {
        self.number -= 1;
    }

    // This function returns the current number of the counter
    // It return a unsigned integer
    // It is a view function, meaning that it only reads data from the blockchain but does not alter any
    function current(Counter storage self) internal view returns (uint) {
        return self.number;
    }
}
