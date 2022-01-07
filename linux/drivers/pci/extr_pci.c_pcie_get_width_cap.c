
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
typedef enum pcie_link_width { ____Placeholder_pcie_link_width } pcie_link_width ;


 int PCIE_LNK_WIDTH_UNKNOWN ;
 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_MLW ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;

enum pcie_link_width pcie_get_width_cap(struct pci_dev *dev)
{
 u32 lnkcap;

 pcie_capability_read_dword(dev, PCI_EXP_LNKCAP, &lnkcap);
 if (lnkcap)
  return (lnkcap & PCI_EXP_LNKCAP_MLW) >> 4;

 return PCIE_LNK_WIDTH_UNKNOWN;
}
