
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_board {scalar_t__ is_pcie; } ;
struct comedi_device {scalar_t__ iobase; scalar_t__ mmio; struct dio200_board* board_ptr; } ;


 int outl (unsigned int,scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void dio200_write32(struct comedi_device *dev,
      unsigned int offset, unsigned int val)
{
 const struct dio200_board *board = dev->board_ptr;

 if (board->is_pcie)
  offset <<= 3;

 if (dev->mmio)
  writel(val, dev->mmio + offset);
 else
  outl(val, dev->iobase + offset);
}
