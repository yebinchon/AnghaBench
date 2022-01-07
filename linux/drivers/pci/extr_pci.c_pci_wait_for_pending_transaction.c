
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ PCI_EXP_DEVSTA ;
 int PCI_EXP_DEVSTA_TRPND ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_cap (struct pci_dev*) ;
 int pci_wait_for_pending (struct pci_dev*,scalar_t__,int ) ;

int pci_wait_for_pending_transaction(struct pci_dev *dev)
{
 if (!pci_is_pcie(dev))
  return 1;

 return pci_wait_for_pending(dev, pci_pcie_cap(dev) + PCI_EXP_DEVSTA,
        PCI_EXP_DEVSTA_TRPND);
}
