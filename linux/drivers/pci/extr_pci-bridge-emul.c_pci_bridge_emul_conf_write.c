
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_bridge_reg_behavior {int rw; int w1c; } ;
struct pci_bridge_emul {struct pci_bridge_reg_behavior* pci_regs_behavior; int conf; TYPE_1__* ops; struct pci_bridge_reg_behavior* pcie_cap_regs_behavior; int pcie_conf; scalar_t__ has_pcie; } ;
struct TYPE_2__ {void (* write_pcie ) (struct pci_bridge_emul*,int,int,int,int) ;void (* write_base ) (struct pci_bridge_emul*,int,int,int,int) ;} ;


 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_BRIDGE_CONF_END ;
 int PCI_CAP_PCIE_END ;
 int PCI_CAP_PCIE_START ;
 int pci_bridge_emul_conf_read (struct pci_bridge_emul*,int,int,int*) ;

int pci_bridge_emul_conf_write(struct pci_bridge_emul *bridge, int where,
          int size, u32 value)
{
 int reg = where & ~3;
 int mask, ret, old, new, shift;
 void (*write_op)(struct pci_bridge_emul *bridge, int reg,
    u32 old, u32 new, u32 mask);
 u32 *cfgspace;
 const struct pci_bridge_reg_behavior *behavior;

 if (bridge->has_pcie && reg >= PCI_CAP_PCIE_END)
  return PCIBIOS_SUCCESSFUL;

 if (!bridge->has_pcie && reg >= PCI_BRIDGE_CONF_END)
  return PCIBIOS_SUCCESSFUL;

 shift = (where & 0x3) * 8;

 if (size == 4)
  mask = 0xffffffff;
 else if (size == 2)
  mask = 0xffff << shift;
 else if (size == 1)
  mask = 0xff << shift;
 else
  return PCIBIOS_BAD_REGISTER_NUMBER;

 ret = pci_bridge_emul_conf_read(bridge, reg, 4, &old);
 if (ret != PCIBIOS_SUCCESSFUL)
  return ret;

 if (bridge->has_pcie && reg >= PCI_CAP_PCIE_START) {
  reg -= PCI_CAP_PCIE_START;
  write_op = bridge->ops->write_pcie;
  cfgspace = (u32 *) &bridge->pcie_conf;
  behavior = bridge->pcie_cap_regs_behavior;
 } else {
  write_op = bridge->ops->write_base;
  cfgspace = (u32 *) &bridge->conf;
  behavior = bridge->pci_regs_behavior;
 }


 new = old & (~mask | ~behavior[reg / 4].rw);


 new |= (value << shift) & (behavior[reg / 4].rw & mask);


 new &= ~((value << shift) & (behavior[reg / 4].w1c & mask));

 cfgspace[reg / 4] = new;

 if (write_op)
  write_op(bridge, reg, old, new, mask);

 return PCIBIOS_SUCCESSFUL;
}
