
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_board {scalar_t__ is_pcie; } ;
struct comedi_subdevice {struct comedi_8254* private; } ;
struct comedi_device {unsigned int mmio; unsigned int iobase; struct dio200_board* board_ptr; } ;
struct comedi_8254 {unsigned int mmio; unsigned int iobase; } ;



__attribute__((used)) static unsigned int dio200_subdev_8254_offset(struct comedi_device *dev,
           struct comedi_subdevice *s)
{
 const struct dio200_board *board = dev->board_ptr;
 struct comedi_8254 *i8254 = s->private;
 unsigned int offset;


 if (dev->mmio)
  offset = i8254->mmio - dev->mmio;
 else
  offset = i8254->iobase - dev->iobase;


 if (board->is_pcie)
  offset >>= 3;


 return offset;
}
