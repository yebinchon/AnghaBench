
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bridge_emul {int pci_regs_behavior; int pcie_cap_regs_behavior; scalar_t__ has_pcie; } ;


 int kfree (int ) ;

void pci_bridge_emul_cleanup(struct pci_bridge_emul *bridge)
{
 if (bridge->has_pcie)
  kfree(bridge->pcie_cap_regs_behavior);
 kfree(bridge->pci_regs_behavior);
}
