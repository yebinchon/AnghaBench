
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int __pci_restore_msi_state (struct pci_dev*) ;
 int __pci_restore_msix_state (struct pci_dev*) ;

void pci_restore_msi_state(struct pci_dev *dev)
{
 __pci_restore_msi_state(dev);
 __pci_restore_msix_state(dev);
}
