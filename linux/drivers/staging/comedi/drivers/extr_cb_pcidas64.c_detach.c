
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ main_iobase; scalar_t__ plx9080_iobase; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct pcidas64_private* private; } ;


 int cb_pcidas64_free_dma (struct comedi_device*) ;
 int comedi_pci_disable (struct comedi_device*) ;
 int disable_plx_interrupts (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (scalar_t__) ;

__attribute__((used)) static void detach(struct comedi_device *dev)
{
 struct pcidas64_private *devpriv = dev->private;

 if (dev->irq)
  free_irq(dev->irq, dev);
 if (devpriv) {
  if (devpriv->plx9080_iobase) {
   disable_plx_interrupts(dev);
   iounmap(devpriv->plx9080_iobase);
  }
  if (devpriv->main_iobase)
   iounmap(devpriv->main_iobase);
  if (dev->mmio)
   iounmap(dev->mmio);
 }
 comedi_pci_disable(dev);
 cb_pcidas64_free_dma(dev);
}
