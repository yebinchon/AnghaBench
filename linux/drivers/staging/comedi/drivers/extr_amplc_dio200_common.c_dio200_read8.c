
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_board {scalar_t__ is_pcie; } ;
struct comedi_device {scalar_t__ iobase; scalar_t__ mmio; struct dio200_board* board_ptr; } ;


 unsigned char inb (scalar_t__) ;
 unsigned char readb (scalar_t__) ;

__attribute__((used)) static unsigned char dio200_read8(struct comedi_device *dev,
      unsigned int offset)
{
 const struct dio200_board *board = dev->board_ptr;

 if (board->is_pcie)
  offset <<= 3;

 if (dev->mmio)
  return readb(dev->mmio + offset);
 return inb(dev->iobase + offset);
}
