
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ plx9080_iobase; } ;
struct comedi_device {struct pcidas64_private* private; } ;


 scalar_t__ PLX_REG_DMADPR0 ;
 scalar_t__ PLX_REG_DMADPR1 ;
 scalar_t__ PLX_REG_DMALADR0 ;
 scalar_t__ PLX_REG_DMALADR1 ;
 scalar_t__ PLX_REG_DMAPADR0 ;
 scalar_t__ PLX_REG_DMAPADR1 ;
 scalar_t__ PLX_REG_DMASIZ0 ;
 scalar_t__ PLX_REG_DMASIZ1 ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void load_first_dma_descriptor(struct comedi_device *dev,
          unsigned int dma_channel,
          unsigned int descriptor_bits)
{
 struct pcidas64_private *devpriv = dev->private;
 if (dma_channel) {
  writel(0, devpriv->plx9080_iobase + PLX_REG_DMASIZ1);
  writel(0, devpriv->plx9080_iobase + PLX_REG_DMAPADR1);
  writel(0, devpriv->plx9080_iobase + PLX_REG_DMALADR1);
  writel(descriptor_bits,
         devpriv->plx9080_iobase + PLX_REG_DMADPR1);
 } else {
  writel(0, devpriv->plx9080_iobase + PLX_REG_DMASIZ0);
  writel(0, devpriv->plx9080_iobase + PLX_REG_DMAPADR0);
  writel(0, devpriv->plx9080_iobase + PLX_REG_DMALADR0);
  writel(descriptor_bits,
         devpriv->plx9080_iobase + PLX_REG_DMADPR0);
 }
}
