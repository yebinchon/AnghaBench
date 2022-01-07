
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int priv_flags; } ;


 int PCI_DEV_ADDED ;
 int assign_bit (int ,int *,int) ;

__attribute__((used)) static inline void pci_dev_assign_added(struct pci_dev *dev, bool added)
{
 assign_bit(PCI_DEV_ADDED, &dev->priv_flags, added);
}
