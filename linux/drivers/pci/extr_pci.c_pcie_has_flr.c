
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev_flags; } ;


 int PCI_DEV_FLAGS_NO_FLR_RESET ;
 int PCI_EXP_DEVCAP ;
 int PCI_EXP_DEVCAP_FLR ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;

bool pcie_has_flr(struct pci_dev *dev)
{
 u32 cap;

 if (dev->dev_flags & PCI_DEV_FLAGS_NO_FLR_RESET)
  return 0;

 pcie_capability_read_dword(dev, PCI_EXP_DEVCAP, &cap);
 return cap & PCI_EXP_DEVCAP_FLR;
}
