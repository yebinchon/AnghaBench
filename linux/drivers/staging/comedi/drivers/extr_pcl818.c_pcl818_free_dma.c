
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl818_private {int dma; } ;
struct comedi_device {struct pcl818_private* private; } ;


 int comedi_isadma_free (int ) ;

__attribute__((used)) static void pcl818_free_dma(struct comedi_device *dev)
{
 struct pcl818_private *devpriv = dev->private;

 if (devpriv)
  comedi_isadma_free(devpriv->dma);
}
