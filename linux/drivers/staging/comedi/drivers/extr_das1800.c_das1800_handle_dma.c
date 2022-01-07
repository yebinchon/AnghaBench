
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das1800_private {int irq_dma_bits; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int dummy; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {scalar_t__ iobase; struct das1800_private* private; } ;


 unsigned int CLEAR_INTR_MASK ;
 scalar_t__ DAS1800_STATUS ;
 unsigned int DMATC ;
 int DMA_DUAL ;
 int comedi_isadma_program (struct comedi_isadma_desc*) ;
 int das1800_flush_dma_channel (struct comedi_device*,struct comedi_subdevice*,struct comedi_isadma_desc*) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void das1800_handle_dma(struct comedi_device *dev,
          struct comedi_subdevice *s, unsigned int status)
{
 struct das1800_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
 const int dual_dma = devpriv->irq_dma_bits & DMA_DUAL;

 das1800_flush_dma_channel(dev, s, desc);


 comedi_isadma_program(desc);

 if (status & DMATC) {

  outb(CLEAR_INTR_MASK & ~DMATC, dev->iobase + DAS1800_STATUS);

  if (dual_dma)
   dma->cur_dma = 1 - dma->cur_dma;
 }
}
