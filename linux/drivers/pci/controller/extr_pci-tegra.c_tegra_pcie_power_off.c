
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_soc {scalar_t__ has_cml_clk; } ;
struct tegra_pcie {int supplies; int num_supplies; int afi_clk; int cml_clk; int pll_e; int afi_rst; struct tegra_pcie_soc* soc; struct device* dev; } ;
struct device {int pm_domain; } ;


 int TEGRA_POWERGATE_PCIE ;
 int clk_disable_unprepare (int ) ;
 int dev_warn (struct device*,char*,int) ;
 int regulator_bulk_disable (int ,int ) ;
 int reset_control_assert (int ) ;
 int tegra_powergate_power_off (int ) ;

__attribute__((used)) static void tegra_pcie_power_off(struct tegra_pcie *pcie)
{
 struct device *dev = pcie->dev;
 const struct tegra_pcie_soc *soc = pcie->soc;
 int err;

 reset_control_assert(pcie->afi_rst);

 clk_disable_unprepare(pcie->pll_e);
 if (soc->has_cml_clk)
  clk_disable_unprepare(pcie->cml_clk);
 clk_disable_unprepare(pcie->afi_clk);

 if (!dev->pm_domain)
  tegra_powergate_power_off(TEGRA_POWERGATE_PCIE);

 err = regulator_bulk_disable(pcie->num_supplies, pcie->supplies);
 if (err < 0)
  dev_warn(dev, "failed to disable regulators: %d\n", err);
}
