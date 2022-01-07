
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int dma; } ;
struct comedi_device {struct labpc_private* private; } ;


 int comedi_isadma_free (int ) ;

void labpc_free_dma_chan(struct comedi_device *dev)
{
 struct labpc_private *devpriv = dev->private;

 if (devpriv)
  comedi_isadma_free(devpriv->dma);
}
