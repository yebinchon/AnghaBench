
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_pipe3 {scalar_t__ mode; int dpll_reset_reg; int dpll_reset_syscon; int dev; int pll_ctrl_base; } ;
struct phy {int dummy; } ;


 int EBUSY ;
 scalar_t__ PIPE3_MODE_PCIE ;
 scalar_t__ PIPE3_MODE_SATA ;
 int PLL_CONFIGURATION2 ;
 int PLL_IDLE ;
 int PLL_IDLE_TIME ;
 int PLL_LDOPWDN ;
 int PLL_STATUS ;
 int PLL_TICOPWDN ;
 int SATA_PLL_SOFT_RESET ;
 int cpu_relax () ;
 int dev_err (int ,char*,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 struct ti_pipe3* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int ti_pipe3_disable_clocks (struct ti_pipe3*) ;
 int ti_pipe3_readl (int ,int ) ;
 int ti_pipe3_writel (int ,int ,int) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int ti_pipe3_exit(struct phy *x)
{
 struct ti_pipe3 *phy = phy_get_drvdata(x);
 u32 val;
 unsigned long timeout;




 if (phy->mode == PIPE3_MODE_SATA && !phy->dpll_reset_syscon)
  return 0;


 if (phy->mode != PIPE3_MODE_PCIE) {

  val = ti_pipe3_readl(phy->pll_ctrl_base, PLL_CONFIGURATION2);
  val |= PLL_IDLE;
  ti_pipe3_writel(phy->pll_ctrl_base, PLL_CONFIGURATION2, val);


  timeout = jiffies + msecs_to_jiffies(PLL_IDLE_TIME);
  do {
   cpu_relax();
   val = ti_pipe3_readl(phy->pll_ctrl_base, PLL_STATUS);
   if ((val & PLL_TICOPWDN) && (val & PLL_LDOPWDN))
    break;
  } while (!time_after(jiffies, timeout));

  if (!(val & PLL_TICOPWDN) || !(val & PLL_LDOPWDN)) {
   dev_err(phy->dev, "Failed to power down: PLL_STATUS 0x%x\n",
    val);
   return -EBUSY;
  }
 }


 if (phy->mode == PIPE3_MODE_SATA) {
  regmap_update_bits(phy->dpll_reset_syscon, phy->dpll_reset_reg,
       SATA_PLL_SOFT_RESET, SATA_PLL_SOFT_RESET);
  regmap_update_bits(phy->dpll_reset_syscon, phy->dpll_reset_reg,
       SATA_PLL_SOFT_RESET, 0);
 }

 ti_pipe3_disable_clocks(phy);

 return 0;
}
