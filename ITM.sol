pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/presets/ERC1155PresetMinterPauser.sol";
contract ITM is ERC1155PresetMinterPauser {
    
    uint256 public constant ITM = 0;
    uint256 public constant WBZD = 1;
    
    constructor() ERC1155PresetMinterPauser( "https://api.frank.hk/api/nft/demo/1155/marvel/{id}.json") {
        _mint(msg.sender, ITM, 10**18, "");
        _mint(msg.sender, WBZD, 1, "");
    }
    
}