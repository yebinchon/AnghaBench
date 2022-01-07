
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
typedef enum pci_bus_speed { ____Placeholder_pci_bus_speed } pci_bus_speed ;


 int PCIE_SPEED_16_0GT ;
 int PCIE_SPEED_2_5GT ;
 int PCIE_SPEED_32_0GT ;
 int PCIE_SPEED_5_0GT ;
 int PCIE_SPEED_8_0GT ;
 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP2 ;
 int PCI_EXP_LNKCAP2_SLS_16_0GB ;
 int PCI_EXP_LNKCAP2_SLS_2_5GB ;
 int PCI_EXP_LNKCAP2_SLS_32_0GB ;
 int PCI_EXP_LNKCAP2_SLS_5_0GB ;
 int PCI_EXP_LNKCAP2_SLS_8_0GB ;
 int PCI_EXP_LNKCAP_SLS ;
 int PCI_EXP_LNKCAP_SLS_2_5GB ;
 int PCI_EXP_LNKCAP_SLS_5_0GB ;
 int PCI_SPEED_UNKNOWN ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;

enum pci_bus_speed pcie_get_speed_cap(struct pci_dev *dev)
{
 u32 lnkcap2, lnkcap;
 pcie_capability_read_dword(dev, PCI_EXP_LNKCAP2, &lnkcap2);
 if (lnkcap2) {
  if (lnkcap2 & PCI_EXP_LNKCAP2_SLS_32_0GB)
   return PCIE_SPEED_32_0GT;
  else if (lnkcap2 & PCI_EXP_LNKCAP2_SLS_16_0GB)
   return PCIE_SPEED_16_0GT;
  else if (lnkcap2 & PCI_EXP_LNKCAP2_SLS_8_0GB)
   return PCIE_SPEED_8_0GT;
  else if (lnkcap2 & PCI_EXP_LNKCAP2_SLS_5_0GB)
   return PCIE_SPEED_5_0GT;
  else if (lnkcap2 & PCI_EXP_LNKCAP2_SLS_2_5GB)
   return PCIE_SPEED_2_5GT;
  return PCI_SPEED_UNKNOWN;
 }

 pcie_capability_read_dword(dev, PCI_EXP_LNKCAP, &lnkcap);
 if ((lnkcap & PCI_EXP_LNKCAP_SLS) == PCI_EXP_LNKCAP_SLS_5_0GB)
  return PCIE_SPEED_5_0GT;
 else if ((lnkcap & PCI_EXP_LNKCAP_SLS) == PCI_EXP_LNKCAP_SLS_2_5GB)
  return PCIE_SPEED_2_5GT;

 return PCI_SPEED_UNKNOWN;
}
