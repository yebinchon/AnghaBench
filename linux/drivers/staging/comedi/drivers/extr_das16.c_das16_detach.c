
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16_private_struct {scalar_t__ extra_iobase; } ;
struct das16_board {int size; } ;
struct comedi_device {scalar_t__ iobase; struct das16_private_struct* private; struct das16_board* board_ptr; } ;


 int comedi_legacy_detach (struct comedi_device*) ;
 int das16_free_dma (struct comedi_device*) ;
 int das16_reset (struct comedi_device*) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void das16_detach(struct comedi_device *dev)
{
 const struct das16_board *board = dev->board_ptr;
 struct das16_private_struct *devpriv = dev->private;

 if (devpriv) {
  if (dev->iobase)
   das16_reset(dev);
  das16_free_dma(dev);

  if (devpriv->extra_iobase)
   release_region(devpriv->extra_iobase,
           board->size & 0x3ff);
 }

 comedi_legacy_detach(dev);
}
