
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;


 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;

__attribute__((used)) static bool pci_quirk_cavium_acs_match(struct pci_dev *dev)
{






 return (pci_is_pcie(dev) &&
  (pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT) &&
  ((dev->device & 0xf800) == 0xa000));
}
