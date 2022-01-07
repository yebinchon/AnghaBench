
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bridge_emul {struct mvebu_pcie_port* data; } ;
struct mvebu_pcie_port {int dummy; } ;


 int const PCIE_CAP_PCIEXP ;
 int const PCIE_RC_RTSTA ;

 int PCI_EXP_DEVCTL_CERE ;
 int PCI_EXP_DEVCTL_FERE ;
 int PCI_EXP_DEVCTL_NFERE ;
 int PCI_EXP_DEVCTL_URRE ;

 int PCI_EXP_LNKCTL_CLKREQ_EN ;

 int mvebu_writel (struct mvebu_pcie_port*,int,int const) ;

__attribute__((used)) static void
mvebu_pci_bridge_emul_pcie_conf_write(struct pci_bridge_emul *bridge,
          int reg, u32 old, u32 new, u32 mask)
{
 struct mvebu_pcie_port *port = bridge->data;

 switch (reg) {
 case 130:




  new &= ~(PCI_EXP_DEVCTL_URRE | PCI_EXP_DEVCTL_FERE |
    PCI_EXP_DEVCTL_NFERE | PCI_EXP_DEVCTL_CERE);

  mvebu_writel(port, new, PCIE_CAP_PCIEXP + 130);
  break;

 case 129:






  new &= ~PCI_EXP_LNKCTL_CLKREQ_EN;

  mvebu_writel(port, new, PCIE_CAP_PCIEXP + 129);
  break;

 case 128:
  mvebu_writel(port, new, PCIE_RC_RTSTA);
  break;
 }
}
