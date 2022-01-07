
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_pipe3 {scalar_t__ mode; int power_reg; int phy_power_syscon; int dev; int sys_clk; int control_dev; } ;
struct phy {int dummy; } ;


 int EINVAL ;
 int OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_CMD_MASK ;
 int OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_MASK ;
 unsigned long OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_SHIFT ;
 scalar_t__ PIPE3_MODE_PCIE ;
 scalar_t__ PIPE3_MODE_SATA ;
 scalar_t__ PIPE3_MODE_USBSS ;
 int PIPE3_PHY_RX_POWERON ;
 int PIPE3_PHY_TX_POWERON ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 int omap_control_phy_power (int ,int) ;
 struct ti_pipe3* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int ti_pipe3_calibrate (struct ti_pipe3*) ;

__attribute__((used)) static int ti_pipe3_power_on(struct phy *x)
{
 u32 val;
 u32 mask;
 int ret;
 unsigned long rate;
 struct ti_pipe3 *phy = phy_get_drvdata(x);
 bool rx_pending = 0;

 if (!phy->phy_power_syscon) {
  omap_control_phy_power(phy->control_dev, 1);
  return 0;
 }

 rate = clk_get_rate(phy->sys_clk);
 if (!rate) {
  dev_err(phy->dev, "Invalid clock rate\n");
  return -EINVAL;
 }
 rate = rate / 1000000;
 mask = OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_MASK;
 val = rate << OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_SHIFT;
 ret = regmap_update_bits(phy->phy_power_syscon, phy->power_reg,
     mask, val);




 mask = OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_CMD_MASK;
 if (phy->mode == PIPE3_MODE_SATA || phy->mode == PIPE3_MODE_USBSS) {
  val = PIPE3_PHY_TX_POWERON;
  rx_pending = 1;
 } else {
  val = PIPE3_PHY_TX_POWERON | PIPE3_PHY_RX_POWERON;
 }

 regmap_update_bits(phy->phy_power_syscon, phy->power_reg,
      mask, val);

 if (rx_pending) {
  val = PIPE3_PHY_TX_POWERON | PIPE3_PHY_RX_POWERON;
  regmap_update_bits(phy->phy_power_syscon, phy->power_reg,
       mask, val);
 }

 if (phy->mode == PIPE3_MODE_PCIE)
  ti_pipe3_calibrate(phy);

 return 0;
}
