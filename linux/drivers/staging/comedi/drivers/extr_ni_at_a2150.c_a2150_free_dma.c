
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct a2150_private* private; } ;
struct a2150_private {int dma; } ;


 int comedi_isadma_free (int ) ;

__attribute__((used)) static void a2150_free_dma(struct comedi_device *dev)
{
 struct a2150_private *devpriv = dev->private;

 if (devpriv)
  comedi_isadma_free(devpriv->dma);
}
