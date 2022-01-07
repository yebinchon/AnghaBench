
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct controller {int dummy; } ;


 int PCI_EXP_SLTSTA ;
 int PCI_EXP_SLTSTA_MRLSS ;
 struct pci_dev* ctrl_dev (struct controller*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

void pciehp_get_latch_status(struct controller *ctrl, u8 *status)
{
 struct pci_dev *pdev = ctrl_dev(ctrl);
 u16 slot_status;

 pcie_capability_read_word(pdev, PCI_EXP_SLTSTA, &slot_status);
 *status = !!(slot_status & PCI_EXP_SLTSTA_MRLSS);
}
