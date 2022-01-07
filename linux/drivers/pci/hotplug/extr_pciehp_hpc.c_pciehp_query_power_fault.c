
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct controller {int dummy; } ;


 int PCI_EXP_SLTSTA ;
 int PCI_EXP_SLTSTA_PFD ;
 struct pci_dev* ctrl_dev (struct controller*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

int pciehp_query_power_fault(struct controller *ctrl)
{
 struct pci_dev *pdev = ctrl_dev(ctrl);
 u16 slot_status;

 pcie_capability_read_word(pdev, PCI_EXP_SLTSTA, &slot_status);
 return !!(slot_status & PCI_EXP_SLTSTA_PFD);
}
