
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie_dw {scalar_t__ pcie_cap_base; } ;
struct dw_pcie {int dummy; } ;


 scalar_t__ PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_DLLLA ;
 int dw_pcie_readw_dbi (struct dw_pcie*,scalar_t__) ;
 struct tegra_pcie_dw* to_tegra_pcie (struct dw_pcie*) ;

__attribute__((used)) static int tegra_pcie_dw_link_up(struct dw_pcie *pci)
{
 struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
 u32 val = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKSTA);

 return !!(val & PCI_EXP_LNKSTA_DLLLA);
}
