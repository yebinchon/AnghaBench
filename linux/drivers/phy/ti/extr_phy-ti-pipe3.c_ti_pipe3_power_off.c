
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pipe3 {int power_reg; int phy_power_syscon; int control_dev; } ;
struct phy {int dummy; } ;


 int PIPE3_PHY_PWRCTL_CLK_CMD_MASK ;
 int omap_control_phy_power (int ,int ) ;
 struct ti_pipe3* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int ti_pipe3_power_off(struct phy *x)
{
 int ret;
 struct ti_pipe3 *phy = phy_get_drvdata(x);

 if (!phy->phy_power_syscon) {
  omap_control_phy_power(phy->control_dev, 0);
  return 0;
 }

 ret = regmap_update_bits(phy->phy_power_syscon, phy->power_reg,
     PIPE3_PHY_PWRCTL_CLK_CMD_MASK, 0);
 return ret;
}
