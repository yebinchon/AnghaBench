
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int chan; } ;
struct comedi_isadma {struct comedi_isadma_desc* desc; } ;
struct comedi_device {scalar_t__ iobase; struct a2150_private* private; } ;
struct a2150_private {int irq_dma_bits; struct comedi_isadma* dma; } ;


 int DMA_EN_BIT ;
 int DMA_INTR_EN_BIT ;
 scalar_t__ FIFO_RESET_REG ;
 scalar_t__ IRQ_DMA_CNTRL_REG ;
 int comedi_isadma_disable (int ) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int a2150_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct a2150_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[0];


 devpriv->irq_dma_bits &= ~DMA_INTR_EN_BIT & ~DMA_EN_BIT;
 outw(devpriv->irq_dma_bits, dev->iobase + IRQ_DMA_CNTRL_REG);


 comedi_isadma_disable(desc->chan);


 outw(0, dev->iobase + FIFO_RESET_REG);

 return 0;
}
