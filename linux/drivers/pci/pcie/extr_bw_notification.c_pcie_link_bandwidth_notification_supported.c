
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_LBNC ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;

__attribute__((used)) static bool pcie_link_bandwidth_notification_supported(struct pci_dev *dev)
{
 int ret;
 u32 lnk_cap;

 ret = pcie_capability_read_dword(dev, PCI_EXP_LNKCAP, &lnk_cap);
 return (ret == PCIBIOS_SUCCESSFUL) && (lnk_cap & PCI_EXP_LNKCAP_LBNC);
}
