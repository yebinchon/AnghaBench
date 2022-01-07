
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_pipe3 {scalar_t__ mode; int pll_ctrl_base; int pcie_pcs_reg; int pcs_syscon; int control_dev; } ;
struct phy {int dummy; } ;


 int EINVAL ;
 int OMAP_CTRL_PCIE_PCS_DELAY_COUNT_SHIFT ;
 int PCIE_PCS_MASK ;
 scalar_t__ PIPE3_MODE_PCIE ;
 scalar_t__ PIPE3_MODE_SATA ;
 int PLL_CONFIGURATION2 ;
 int PLL_IDLE ;
 int PLL_LOCK ;
 int PLL_STATUS ;
 int omap_control_pcie_pcs (int ,int) ;
 struct ti_pipe3* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int ti_pipe3_calibrate (struct ti_pipe3*) ;
 int ti_pipe3_disable_clocks (struct ti_pipe3*) ;
 int ti_pipe3_dpll_program (struct ti_pipe3*) ;
 int ti_pipe3_dpll_wait_lock (struct ti_pipe3*) ;
 int ti_pipe3_enable_clocks (struct ti_pipe3*) ;
 int ti_pipe3_readl (int ,int ) ;
 int ti_pipe3_writel (int ,int ,int) ;

__attribute__((used)) static int ti_pipe3_init(struct phy *x)
{
 struct ti_pipe3 *phy = phy_get_drvdata(x);
 u32 val;
 int ret = 0;

 ti_pipe3_enable_clocks(phy);





 if (phy->mode == PIPE3_MODE_PCIE) {
  if (!phy->pcs_syscon) {
   omap_control_pcie_pcs(phy->control_dev, 0x96);
   return 0;
  }

  val = 0x96 << OMAP_CTRL_PCIE_PCS_DELAY_COUNT_SHIFT;
  ret = regmap_update_bits(phy->pcs_syscon, phy->pcie_pcs_reg,
      PCIE_PCS_MASK, val);
  return ret;
 }


 val = ti_pipe3_readl(phy->pll_ctrl_base, PLL_CONFIGURATION2);
 if (val & PLL_IDLE) {
  val &= ~PLL_IDLE;
  ti_pipe3_writel(phy->pll_ctrl_base, PLL_CONFIGURATION2, val);
  ret = ti_pipe3_dpll_wait_lock(phy);
 }


 val = ti_pipe3_readl(phy->pll_ctrl_base, PLL_STATUS);
 if ((val & PLL_LOCK) && phy->mode == PIPE3_MODE_SATA)
  return ret;


 ret = ti_pipe3_dpll_program(phy);
 if (ret) {
  ti_pipe3_disable_clocks(phy);
  return -EINVAL;
 }

 ti_pipe3_calibrate(phy);

 return ret;
}
