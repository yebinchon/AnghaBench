
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_soc {int num_ports; int pads_refclk_cfg1; int pads_refclk_cfg0; } ;
struct tegra_pcie {struct tegra_pcie_soc* soc; } ;


 int PADS_REFCLK_CFG0 ;
 int PADS_REFCLK_CFG1 ;
 int pads_writel (struct tegra_pcie*,int ,int ) ;

__attribute__((used)) static void tegra_pcie_apply_pad_settings(struct tegra_pcie *pcie)
{
 const struct tegra_pcie_soc *soc = pcie->soc;


 pads_writel(pcie, soc->pads_refclk_cfg0, PADS_REFCLK_CFG0);

 if (soc->num_ports > 2)
  pads_writel(pcie, soc->pads_refclk_cfg1, PADS_REFCLK_CFG1);
}
