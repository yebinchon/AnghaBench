
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_device {int ioenabled; } ;


 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

void comedi_pci_disable(struct comedi_device *dev)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);

 if (pcidev && dev->ioenabled) {
  pci_release_regions(pcidev);
  pci_disable_device(pcidev);
 }
 dev->ioenabled = 0;
}
