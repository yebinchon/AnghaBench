
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ PCI_CAP_LIST_NEXT ;
 int __pci_find_next_ht_cap (struct pci_dev*,scalar_t__,int) ;

int pci_find_next_ht_capability(struct pci_dev *dev, int pos, int ht_cap)
{
 return __pci_find_next_ht_cap(dev, pos + PCI_CAP_LIST_NEXT, ht_cap);
}
