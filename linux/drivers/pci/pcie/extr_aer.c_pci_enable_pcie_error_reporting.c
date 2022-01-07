
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int aer_cap; } ;


 int EIO ;
 int PCI_EXP_AER_FLAGS ;
 int PCI_EXP_DEVCTL ;
 scalar_t__ pcie_aer_get_firmware_first (struct pci_dev*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

int pci_enable_pcie_error_reporting(struct pci_dev *dev)
{
 if (pcie_aer_get_firmware_first(dev))
  return -EIO;

 if (!dev->aer_cap)
  return -EIO;

 return pcie_capability_set_word(dev, PCI_EXP_DEVCTL, PCI_EXP_AER_FLAGS);
}
