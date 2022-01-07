
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das1800_private {scalar_t__ dma_bits; int dma; } ;
struct comedi_device {struct das1800_private* private; } ;
struct comedi_devconfig {unsigned int* options; } ;


 int COMEDI_ISADMA_READ ;
 int DMA_BUF_SIZE ;
 scalar_t__ DMA_CH5 ;
 scalar_t__ DMA_CH5_CH6 ;
 scalar_t__ DMA_CH6 ;
 scalar_t__ DMA_CH6_CH7 ;
 scalar_t__ DMA_CH7 ;
 scalar_t__ DMA_CH7_CH5 ;
 int comedi_isadma_alloc (struct comedi_device*,int,unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static void das1800_init_dma(struct comedi_device *dev,
        struct comedi_devconfig *it)
{
 struct das1800_private *devpriv = dev->private;
 unsigned int *dma_chan;







 dma_chan = &it->options[2];

 switch ((dma_chan[0] & 0x7) | (dma_chan[1] << 4)) {
 case 0x5:
  devpriv->dma_bits = DMA_CH5;
  break;
 case 0x6:
  devpriv->dma_bits = DMA_CH6;
  break;
 case 0x7:
  devpriv->dma_bits = DMA_CH7;
  break;
 case 0x65:
  devpriv->dma_bits = DMA_CH5_CH6;
  break;
 case 0x76:
  devpriv->dma_bits = DMA_CH6_CH7;
  break;
 case 0x57:
  devpriv->dma_bits = DMA_CH7_CH5;
  break;
 default:
  return;
 }


 devpriv->dma = comedi_isadma_alloc(dev, dma_chan[1] ? 2 : 1,
        dma_chan[0], dma_chan[1],
        DMA_BUF_SIZE, COMEDI_ISADMA_READ);
 if (!devpriv->dma)
  devpriv->dma_bits = 0;
}
