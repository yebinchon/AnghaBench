
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl812_private {int dma; } ;
struct comedi_device {struct pcl812_private* private; } ;


 int COMEDI_ISADMA_READ ;
 int PAGE_SIZE ;
 int comedi_isadma_alloc (struct comedi_device*,int,unsigned int,unsigned int,int,int ) ;

__attribute__((used)) static void pcl812_alloc_dma(struct comedi_device *dev, unsigned int dma_chan)
{
 struct pcl812_private *devpriv = dev->private;


 if (!(dma_chan == 3 || dma_chan == 1))
  return;


 devpriv->dma = comedi_isadma_alloc(dev, 2, dma_chan, dma_chan,
        PAGE_SIZE * 2, COMEDI_ISADMA_READ);
}
