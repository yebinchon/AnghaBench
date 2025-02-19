
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pci_dev_reset_methods {int (* reset ) (struct pci_dev*,int) ;scalar_t__ vendor; scalar_t__ device; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;


 int ENOTTY ;
 scalar_t__ PCI_ANY_ID ;
 struct pci_dev_reset_methods* pci_dev_reset_methods ;
 int stub1 (struct pci_dev*,int) ;

int pci_dev_specific_reset(struct pci_dev *dev, int probe)
{
 const struct pci_dev_reset_methods *i;

 for (i = pci_dev_reset_methods; i->reset; i++) {
  if ((i->vendor == dev->vendor ||
       i->vendor == (u16)PCI_ANY_ID) &&
      (i->device == dev->device ||
       i->device == (u16)PCI_ANY_ID))
   return i->reset(dev, probe);
 }

 return -ENOTTY;
}
