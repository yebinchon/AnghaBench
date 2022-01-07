
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int comedi_pci_detach (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int pci9118_free_dma (struct comedi_device*) ;
 int pci9118_reset (struct comedi_device*) ;
 int pci_dev_put (struct pci_dev*) ;

__attribute__((used)) static void pci9118_detach(struct comedi_device *dev)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);

 if (dev->iobase)
  pci9118_reset(dev);
 comedi_pci_detach(dev);
 pci9118_free_dma(dev);
 pci_dev_put(pcidev);
}
