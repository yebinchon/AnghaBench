
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int is_hotplug_bridge; } ;


 int PCI_EXP_SLTCAP ;
 int PCI_EXP_SLTCAP_HPC ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;

void set_pcie_hotplug_bridge(struct pci_dev *pdev)
{
 u32 reg32;

 pcie_capability_read_dword(pdev, PCI_EXP_SLTCAP, &reg32);
 if (reg32 & PCI_EXP_SLTCAP_HPC)
  pdev->is_hotplug_bridge = 1;
}
