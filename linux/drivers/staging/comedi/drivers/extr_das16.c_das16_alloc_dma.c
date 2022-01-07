
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16_private_struct {int dma; int timer; } ;
struct comedi_device {struct das16_private_struct* private; } ;


 int COMEDI_ISADMA_READ ;
 int DAS16_DMA_SIZE ;
 int comedi_isadma_alloc (struct comedi_device*,int,unsigned int,unsigned int,int ,int ) ;
 int das16_timer_interrupt ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void das16_alloc_dma(struct comedi_device *dev, unsigned int dma_chan)
{
 struct das16_private_struct *devpriv = dev->private;

 timer_setup(&devpriv->timer, das16_timer_interrupt, 0);


 if (!(dma_chan == 1 || dma_chan == 3))
  return;


 devpriv->dma = comedi_isadma_alloc(dev, 2, dma_chan, dma_chan,
        DAS16_DMA_SIZE, COMEDI_ISADMA_READ);
}
