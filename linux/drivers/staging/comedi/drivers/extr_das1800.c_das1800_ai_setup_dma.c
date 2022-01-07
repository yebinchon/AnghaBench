
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das1800_private {int irq_dma_bits; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {unsigned int size; int maxsize; } ;
struct comedi_isadma {struct comedi_isadma_desc* desc; scalar_t__ cur_dma; } ;
struct comedi_device {struct das1800_private* private; } ;


 int DMA_DUAL ;
 int DMA_ENABLED ;
 int comedi_isadma_program (struct comedi_isadma_desc*) ;
 unsigned int das1800_ai_transfer_size (struct comedi_device*,struct comedi_subdevice*,int ,int) ;

__attribute__((used)) static void das1800_ai_setup_dma(struct comedi_device *dev,
     struct comedi_subdevice *s)
{
 struct das1800_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc;
 unsigned int bytes;

 if ((devpriv->irq_dma_bits & DMA_ENABLED) == 0)
  return;

 dma->cur_dma = 0;
 desc = &dma->desc[0];


 bytes = das1800_ai_transfer_size(dev, s, desc->maxsize, 300000000);

 desc->size = bytes;
 comedi_isadma_program(desc);


 if (devpriv->irq_dma_bits & DMA_DUAL) {
  desc = &dma->desc[1];
  desc->size = bytes;
  comedi_isadma_program(desc);
 }
}
