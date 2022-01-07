
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_device {int * mmio; scalar_t__ irq; int ioenabled; } ;


 int comedi_pci_disable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (int *) ;

void comedi_pci_detach(struct comedi_device *dev)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);

 if (!pcidev || !dev->ioenabled)
  return;

 if (dev->irq) {
  free_irq(dev->irq, dev);
  dev->irq = 0;
 }
 if (dev->mmio) {
  iounmap(dev->mmio);
  dev->mmio = ((void*)0);
 }
 comedi_pci_disable(dev);
}
