
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct controller {int slot_cap; TYPE_1__* pcie; } ;
struct TYPE_2__ {struct pci_dev* port; } ;


 int PCI_EXP_SLTCTL ;
 int PCI_EXP_SLTSTA ;
 int ctrl_dbg (struct controller*,char*,int ) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int *) ;

__attribute__((used)) static inline void dbg_ctrl(struct controller *ctrl)
{
 struct pci_dev *pdev = ctrl->pcie->port;
 u16 reg16;

 ctrl_dbg(ctrl, "Slot Capabilities      : 0x%08x\n", ctrl->slot_cap);
 pcie_capability_read_word(pdev, PCI_EXP_SLTSTA, &reg16);
 ctrl_dbg(ctrl, "Slot Status            : 0x%04x\n", reg16);
 pcie_capability_read_word(pdev, PCI_EXP_SLTCTL, &reg16);
 ctrl_dbg(ctrl, "Slot Control           : 0x%04x\n", reg16);
}
