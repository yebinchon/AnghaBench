
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct das1800_board {unsigned char id; int name; } const das1800_board ;
struct comedi_device {int class_dev; int board_name; struct das1800_board const* board_ptr; scalar_t__ iobase; } ;


 size_t BOARD_DAS1801AO ;
 size_t BOARD_DAS1801HC ;
 size_t BOARD_DAS1801ST ;
 size_t BOARD_DAS1801ST_DA ;
 size_t BOARD_DAS1802HR ;
 size_t BOARD_DAS1802HR_DA ;
 scalar_t__ DAS1800_DIGITAL ;






 int ENODEV ;
 struct das1800_board const* das1800_boards ;
 int dev_err (int ,char*,unsigned char,...) ;
 int dev_warn (int ,char*,unsigned char,int ) ;
 int inb (scalar_t__) ;

__attribute__((used)) static int das1800_probe(struct comedi_device *dev)
{
 const struct das1800_board *board = dev->board_ptr;
 unsigned char id;

 id = (inb(dev->iobase + DAS1800_DIGITAL) >> 4) & 0xf;







 if (board) {
  if (board->id == id)
   return 0;
  dev_err(dev->class_dev,
   "probed id does not match board id (0x%x != 0x%x)\n",
   id, board->id);
  return -ENODEV;
 }






 switch (id) {
 case 128:

  board = &das1800_boards[BOARD_DAS1801ST_DA];
  break;
 case 130:

  board = &das1800_boards[BOARD_DAS1802HR_DA];
  break;
 case 133:

  board = &das1800_boards[BOARD_DAS1801AO];
  break;
 case 131:

  board = &das1800_boards[BOARD_DAS1802HR];
  break;
 case 129:

  board = &das1800_boards[BOARD_DAS1801ST];
  break;
 case 132:

  board = &das1800_boards[BOARD_DAS1801HC];
  break;
 default:
  dev_err(dev->class_dev, "invalid probe id 0x%x\n", id);
  return -ENODEV;
 }
 dev->board_ptr = board;
 dev->board_name = board->name;
 dev_warn(dev->class_dev,
   "probed id 0x%0x: %s series (not recommended)\n",
   id, board->name);
 return 0;
}
