
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das1800_private {int dma; } ;
struct comedi_device {struct das1800_private* private; } ;


 int comedi_isadma_free (int ) ;

__attribute__((used)) static void das1800_free_dma(struct comedi_device *dev)
{
 struct das1800_private *devpriv = dev->private;

 if (devpriv)
  comedi_isadma_free(devpriv->dma);
}
