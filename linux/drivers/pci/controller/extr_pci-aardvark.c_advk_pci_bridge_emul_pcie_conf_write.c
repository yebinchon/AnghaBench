
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bridge_emul {struct advk_pcie* data; } ;
struct advk_pcie {int dummy; } ;


 int PCIE_CORE_PCIEXP_CAP ;
 int PCIE_ISR0_MASK_REG ;
 int PCIE_ISR0_REG ;



 int PCI_EXP_RTCTL_PMEIE ;

 int PCI_EXP_RTSTA_PME ;
 int advk_writel (struct advk_pcie*,int,int ) ;

__attribute__((used)) static void
advk_pci_bridge_emul_pcie_conf_write(struct pci_bridge_emul *bridge,
         int reg, u32 old, u32 new, u32 mask)
{
 struct advk_pcie *pcie = bridge->data;

 switch (reg) {
 case 131:
 case 130:
  advk_writel(pcie, new, PCIE_CORE_PCIEXP_CAP + reg);
  break;

 case 129:
  new = (new & PCI_EXP_RTCTL_PMEIE) << 3;
  advk_writel(pcie, new, PCIE_ISR0_MASK_REG);
  break;

 case 128:
  new = (new & PCI_EXP_RTSTA_PME) >> 9;
  advk_writel(pcie, new, PCIE_ISR0_REG);
  break;

 default:
  break;
 }
}
