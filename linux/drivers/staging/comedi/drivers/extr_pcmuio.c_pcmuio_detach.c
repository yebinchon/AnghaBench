
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmuio_private {scalar_t__ irq2; } ;
struct comedi_device {scalar_t__ irq; struct pcmuio_private* private; } ;


 int comedi_legacy_detach (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int pcmuio_reset (struct comedi_device*) ;

__attribute__((used)) static void pcmuio_detach(struct comedi_device *dev)
{
 struct pcmuio_private *devpriv = dev->private;

 if (devpriv) {
  pcmuio_reset(dev);


  if (devpriv->irq2 && devpriv->irq2 != dev->irq)
   free_irq(devpriv->irq2, dev);
 }
 comedi_legacy_detach(dev);
}
