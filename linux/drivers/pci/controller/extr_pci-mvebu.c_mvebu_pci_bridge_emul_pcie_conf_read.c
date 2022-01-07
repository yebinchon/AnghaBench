
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bridge_emul {struct mvebu_pcie_port* data; } ;
struct mvebu_pcie_port {int dummy; } ;
typedef int pci_bridge_emul_read_status_t ;


 int const PCIE_CAP_PCIEXP ;
 int const PCIE_RC_RTSTA ;
 int PCI_BRIDGE_EMUL_HANDLED ;
 int PCI_BRIDGE_EMUL_NOT_HANDLED ;


 int PCI_EXP_DEVCTL_CERE ;
 int PCI_EXP_DEVCTL_FERE ;
 int PCI_EXP_DEVCTL_NFERE ;
 int PCI_EXP_DEVCTL_URRE ;

 int PCI_EXP_LNKCAP_CLKPM ;



 int PCI_EXP_SLTSTA_PDS ;
 int mvebu_readl (struct mvebu_pcie_port*,int const) ;

__attribute__((used)) static pci_bridge_emul_read_status_t
mvebu_pci_bridge_emul_pcie_conf_read(struct pci_bridge_emul *bridge,
         int reg, u32 *value)
{
 struct mvebu_pcie_port *port = bridge->data;

 switch (reg) {
 case 133:
  *value = mvebu_readl(port, PCIE_CAP_PCIEXP + 133);
  break;

 case 132:
  *value = mvebu_readl(port, PCIE_CAP_PCIEXP + 132) &
     ~(PCI_EXP_DEVCTL_URRE | PCI_EXP_DEVCTL_FERE |
       PCI_EXP_DEVCTL_NFERE | PCI_EXP_DEVCTL_CERE);
  break;

 case 131:




  *value = mvebu_readl(port, PCIE_CAP_PCIEXP + 131) &
    ~PCI_EXP_LNKCAP_CLKPM;
  break;

 case 130:
  *value = mvebu_readl(port, PCIE_CAP_PCIEXP + 130);
  break;

 case 128:
  *value = PCI_EXP_SLTSTA_PDS << 16;
  break;

 case 129:
  *value = mvebu_readl(port, PCIE_RC_RTSTA);
  break;

 default:
  return PCI_BRIDGE_EMUL_NOT_HANDLED;
 }

 return PCI_BRIDGE_EMUL_HANDLED;
}
