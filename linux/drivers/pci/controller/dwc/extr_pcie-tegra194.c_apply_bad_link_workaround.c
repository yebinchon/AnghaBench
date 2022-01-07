
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tegra_pcie_dw {int init_link_width; scalar_t__ pcie_cap_base; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dev; } ;


 scalar_t__ PCI_EXP_LNKCTL ;
 scalar_t__ PCI_EXP_LNKCTL2 ;
 int PCI_EXP_LNKCTL2_TLS ;
 int PCI_EXP_LNKCTL2_TLS_2_5GT ;
 int PCI_EXP_LNKCTL_RL ;
 scalar_t__ PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_LBMS ;
 int PCI_EXP_LNKSTA_NLW ;
 int PCI_EXP_LNKSTA_NLW_SHIFT ;
 int dev_warn (int ,char*) ;
 int dw_pcie_readw_dbi (struct dw_pcie*,scalar_t__) ;
 int dw_pcie_writew_dbi (struct dw_pcie*,scalar_t__,int) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct tegra_pcie_dw* to_tegra_pcie (struct dw_pcie*) ;

__attribute__((used)) static void apply_bad_link_workaround(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
 u32 current_link_width;
 u16 val;






 val = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKSTA);
 if (val & PCI_EXP_LNKSTA_LBMS) {
  current_link_width = (val & PCI_EXP_LNKSTA_NLW) >>
         PCI_EXP_LNKSTA_NLW_SHIFT;
  if (pcie->init_link_width > current_link_width) {
   dev_warn(pci->dev, "PCIe link is bad, width reduced\n");
   val = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base +
      PCI_EXP_LNKCTL2);
   val &= ~PCI_EXP_LNKCTL2_TLS;
   val |= PCI_EXP_LNKCTL2_TLS_2_5GT;
   dw_pcie_writew_dbi(pci, pcie->pcie_cap_base +
        PCI_EXP_LNKCTL2, val);

   val = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base +
      PCI_EXP_LNKCTL);
   val |= PCI_EXP_LNKCTL_RL;
   dw_pcie_writew_dbi(pci, pcie->pcie_cap_base +
        PCI_EXP_LNKCTL, val);
  }
 }
}
