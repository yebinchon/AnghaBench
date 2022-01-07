
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bridge_emul {struct advk_pcie* data; } ;
struct advk_pcie {int dummy; } ;
typedef int pci_bridge_emul_read_status_t ;


 int PCIE_CORE_PCIEXP_CAP ;
 int PCIE_ISR0_MASK_REG ;
 int PCIE_ISR0_REG ;
 int PCIE_MSG_LOG_REG ;
 int PCIE_MSG_PM_PME_MASK ;
 int PCI_BRIDGE_EMUL_HANDLED ;
 int PCI_BRIDGE_EMUL_NOT_HANDLED ;






 int PCI_EXP_RTCTL_PMEIE ;


 int PCI_EXP_SLTSTA_PDS ;
 int advk_readl (struct advk_pcie*,int ) ;

__attribute__((used)) static pci_bridge_emul_read_status_t
advk_pci_bridge_emul_pcie_conf_read(struct pci_bridge_emul *bridge,
        int reg, u32 *value)
{
 struct advk_pcie *pcie = bridge->data;


 switch (reg) {
 case 128:
  *value = PCI_EXP_SLTSTA_PDS << 16;
  return PCI_BRIDGE_EMUL_HANDLED;

 case 130: {
  u32 val = advk_readl(pcie, PCIE_ISR0_MASK_REG);
  *value = (val & PCIE_MSG_PM_PME_MASK) ? PCI_EXP_RTCTL_PMEIE : 0;
  return PCI_BRIDGE_EMUL_HANDLED;
 }

 case 129: {
  u32 isr0 = advk_readl(pcie, PCIE_ISR0_REG);
  u32 msglog = advk_readl(pcie, PCIE_MSG_LOG_REG);
  *value = (isr0 & PCIE_MSG_PM_PME_MASK) << 16 | (msglog >> 16);
  return PCI_BRIDGE_EMUL_HANDLED;
 }

 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
  *value = advk_readl(pcie, PCIE_CORE_PCIEXP_CAP + reg);
  return PCI_BRIDGE_EMUL_HANDLED;
 default:
  return PCI_BRIDGE_EMUL_NOT_HANDLED;
 }

}
