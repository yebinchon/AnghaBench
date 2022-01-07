
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {int dma; } ;
struct comedi_device {struct dt282x_private* private; } ;


 int comedi_isadma_free (int ) ;

__attribute__((used)) static void dt282x_free_dma(struct comedi_device *dev)
{
 struct dt282x_private *devpriv = dev->private;

 if (devpriv)
  comedi_isadma_free(devpriv->dma);
}
