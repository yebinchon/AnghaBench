
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nidio96_private {int mite; int * di_mite_ring; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct nidio96_private* private; } ;


 int comedi_pci_disable (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int mite_detach (int ) ;
 int mite_free_ring (int *) ;

__attribute__((used)) static void nidio_detach(struct comedi_device *dev)
{
 struct nidio96_private *devpriv = dev->private;

 if (dev->irq)
  free_irq(dev->irq, dev);
 if (devpriv) {
  if (devpriv->di_mite_ring) {
   mite_free_ring(devpriv->di_mite_ring);
   devpriv->di_mite_ring = ((void*)0);
  }
  mite_detach(devpriv->mite);
 }
 if (dev->mmio)
  iounmap(dev->mmio);
 comedi_pci_disable(dev);
}
