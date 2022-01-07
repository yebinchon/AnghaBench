
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16_board {int id; } ;
struct comedi_device {int class_dev; scalar_t__ iobase; struct das16_board* board_ptr; } ;
struct comedi_devconfig {int dummy; } ;


 scalar_t__ DAS16_DIO_REG ;
 int EINVAL ;
 int dev_err (int ,char*,int,int) ;
 int inb (scalar_t__) ;

__attribute__((used)) static int das16_probe(struct comedi_device *dev, struct comedi_devconfig *it)
{
 const struct das16_board *board = dev->board_ptr;
 int diobits;


 diobits = inb(dev->iobase + DAS16_DIO_REG) & 0xf0;
 if (board->id != diobits) {
  dev_err(dev->class_dev,
   "requested board's id bits are incorrect (0x%x != 0x%x)\n",
   board->id, diobits);
  return -EINVAL;
 }

 return 0;
}
