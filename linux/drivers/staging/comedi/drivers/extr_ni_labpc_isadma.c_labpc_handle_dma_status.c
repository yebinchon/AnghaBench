
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int stat1; int stat2; } ;
struct labpc_boardinfo {scalar_t__ is_labpc1200; } ;
struct comedi_device {struct labpc_private* private; struct labpc_boardinfo* board_ptr; } ;


 int STAT1_GATA0 ;
 int STAT2_OUTA1 ;
 int handle_isa_dma (struct comedi_device*) ;

void labpc_handle_dma_status(struct comedi_device *dev)
{
 const struct labpc_boardinfo *board = dev->board_ptr;
 struct labpc_private *devpriv = dev->private;





 if (devpriv->stat1 & STAT1_GATA0 ||
     (board->is_labpc1200 && devpriv->stat2 & STAT2_OUTA1))
  handle_isa_dma(dev);
}
