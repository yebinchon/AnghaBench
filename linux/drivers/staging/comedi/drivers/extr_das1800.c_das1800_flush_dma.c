
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das1800_private {int irq_dma_bits; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int dummy; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {struct das1800_private* private; } ;


 int DMA_DUAL ;
 int das1800_flush_dma_channel (struct comedi_device*,struct comedi_subdevice*,struct comedi_isadma_desc*) ;
 int das1800_handle_fifo_not_empty (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static void das1800_flush_dma(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct das1800_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
 const int dual_dma = devpriv->irq_dma_bits & DMA_DUAL;

 das1800_flush_dma_channel(dev, s, desc);

 if (dual_dma) {

  dma->cur_dma = 1 - dma->cur_dma;
  desc = &dma->desc[dma->cur_dma];
  das1800_flush_dma_channel(dev, s, desc);
 }


 das1800_handle_fifo_not_empty(dev, s);
}
