
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_dw {int cid; int dev; int pex_ctl_supply; int core_clk; int core_apb_rst; int core_rst; } ;


 int clk_disable_unprepare (int ) ;
 int dev_err (int ,char*,int,...) ;
 int regulator_disable (int ) ;
 int reset_control_assert (int ) ;
 int tegra_pcie_bpmp_set_ctrl_state (struct tegra_pcie_dw*,int) ;
 int tegra_pcie_disable_phy (struct tegra_pcie_dw*) ;
 int tegra_pcie_disable_slot_regulators (struct tegra_pcie_dw*) ;

__attribute__((used)) static int __deinit_controller(struct tegra_pcie_dw *pcie)
{
 int ret;

 ret = reset_control_assert(pcie->core_rst);
 if (ret) {
  dev_err(pcie->dev, "Failed to assert \"core\" reset: %d\n",
   ret);
  return ret;
 }

 tegra_pcie_disable_phy(pcie);

 ret = reset_control_assert(pcie->core_apb_rst);
 if (ret) {
  dev_err(pcie->dev, "Failed to assert APB reset: %d\n", ret);
  return ret;
 }

 clk_disable_unprepare(pcie->core_clk);

 ret = regulator_disable(pcie->pex_ctl_supply);
 if (ret) {
  dev_err(pcie->dev, "Failed to disable regulator: %d\n", ret);
  return ret;
 }

 tegra_pcie_disable_slot_regulators(pcie);

 ret = tegra_pcie_bpmp_set_ctrl_state(pcie, 0);
 if (ret) {
  dev_err(pcie->dev, "Failed to disable controller %d: %d\n",
   pcie->cid, ret);
  return ret;
 }

 return ret;
}
