
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int mite; int * gpct_mite_ring; int cdo_mite_ring; int ao_mite_ring; int ai_mite_ring; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct ni_private* private; } ;


 int comedi_pci_disable (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int mio_common_detach (struct comedi_device*) ;
 int mite_detach (int ) ;
 int mite_free_ring (int ) ;

__attribute__((used)) static void pcimio_detach(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;

 mio_common_detach(dev);
 if (dev->irq)
  free_irq(dev->irq, dev);
 if (devpriv) {
  mite_free_ring(devpriv->ai_mite_ring);
  mite_free_ring(devpriv->ao_mite_ring);
  mite_free_ring(devpriv->cdo_mite_ring);
  mite_free_ring(devpriv->gpct_mite_ring[0]);
  mite_free_ring(devpriv->gpct_mite_ring[1]);
  mite_detach(devpriv->mite);
 }
 if (dev->mmio)
  iounmap(dev->mmio);
 comedi_pci_disable(dev);
}
