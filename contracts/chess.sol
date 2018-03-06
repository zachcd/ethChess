pragma solidity ^0.4.17;

contract Chess {
  enum PieceType { Empty, Pawn, Knight, Bishop, Rook, Queen, King }
  enum Color { B, W }

  struct Piece {
    Color c;
    PieceType p;
  }

  struct EnPassantGhost {
    uint8 column;
    bool color; // 0 = white, 1 = black
  }

  struct BoardState {
    Piece[8][8] board;
    bool currentTurn; // 0 = white, 1 = black
    uint8 fiftyMoveCount;
    bool blackKingSideCastle;
    bool whiteKingSideCastle;
    bool blackQueenSideCastle;
    bool whiteQueenSideCastle;
    EnPassantGhost enPassantAvailable;
  }

  struct Token {
    address owner;
    uint8 value;
    bool voted;
    string moveSupported;
  }

  Token[] whiteTokens;
  Token[] blackTokens;
  mapping(address => Token) public moveVotes;
  address public owner;
  BoardState board;


  function commitAsWhite() public payable {

  }

  function commitAsBlack() public payable {

  }

  function commitAsEither() public payable {

  }
  function voteForMove() public {

  }
}
