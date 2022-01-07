
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie_dw {int dummy; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int APPL_INTR_EN_L0_0 ;
 int APPL_INTR_EN_L0_0_INT_INT_EN ;
 int APPL_INTR_EN_L0_0_SYS_INTR_EN ;
 int APPL_INTR_EN_L1_8_0 ;
 int APPL_INTR_EN_L1_8_AER_INT_EN ;
 int APPL_INTR_EN_L1_8_AUTO_BW_INT_EN ;
 int APPL_INTR_EN_L1_8_BW_MGT_INT_EN ;
 int APPL_INTR_EN_L1_8_INTX_EN ;
 int CONFIG_PCIEAER ;
 scalar_t__ IS_ENABLED (int ) ;
 int appl_readl (struct tegra_pcie_dw*,int ) ;
 int appl_writel (struct tegra_pcie_dw*,int ,int ) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct tegra_pcie_dw* to_tegra_pcie (struct dw_pcie*) ;

__attribute__((used)) static void tegra_pcie_enable_legacy_interrupts(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
 u32 val;


 val = appl_readl(pcie, APPL_INTR_EN_L0_0);
 val |= APPL_INTR_EN_L0_0_SYS_INTR_EN;
 val |= APPL_INTR_EN_L0_0_INT_INT_EN;
 appl_writel(pcie, val, APPL_INTR_EN_L0_0);

 val = appl_readl(pcie, APPL_INTR_EN_L1_8_0);
 val |= APPL_INTR_EN_L1_8_INTX_EN;
 val |= APPL_INTR_EN_L1_8_AUTO_BW_INT_EN;
 val |= APPL_INTR_EN_L1_8_BW_MGT_INT_EN;
 if (IS_ENABLED(CONFIG_PCIEAER))
  val |= APPL_INTR_EN_L1_8_AER_INT_EN;
 appl_writel(pcie, val, APPL_INTR_EN_L1_8_0);
}
