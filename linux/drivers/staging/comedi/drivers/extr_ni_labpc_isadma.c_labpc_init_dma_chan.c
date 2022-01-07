
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int dma; } ;
struct comedi_device {struct labpc_private* private; } ;


 int COMEDI_ISADMA_READ ;
 int LABPC_ISADMA_BUFFER_SIZE ;
 int comedi_isadma_alloc (struct comedi_device*,int,unsigned int,unsigned int,int ,int ) ;

void labpc_init_dma_chan(struct comedi_device *dev, unsigned int dma_chan)
{
 struct labpc_private *devpriv = dev->private;


 if (dma_chan != 1 && dma_chan != 3)
  return;


 devpriv->dma = comedi_isadma_alloc(dev, 1, dma_chan, dma_chan,
        LABPC_ISADMA_BUFFER_SIZE,
        COMEDI_ISADMA_READ);
}
