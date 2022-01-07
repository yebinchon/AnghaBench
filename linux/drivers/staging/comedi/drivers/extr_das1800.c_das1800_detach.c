
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das1800_private {scalar_t__ iobase2; int fifo_buf; } ;
struct comedi_device {struct das1800_private* private; } ;


 int DAS1800_SIZE ;
 int comedi_legacy_detach (struct comedi_device*) ;
 int das1800_free_dma (struct comedi_device*) ;
 int kfree (int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static void das1800_detach(struct comedi_device *dev)
{
 struct das1800_private *devpriv = dev->private;

 das1800_free_dma(dev);
 if (devpriv) {
  kfree(devpriv->fifo_buf);
  if (devpriv->iobase2)
   release_region(devpriv->iobase2, DAS1800_SIZE);
 }
 comedi_legacy_detach(dev);
}
