
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_dp_phy {int grf; int phy_24m; int dev; } ;
struct phy {int dummy; } ;


 int GRF_EDP_PHY_SIDDQ_HIWORD_MASK ;
 int GRF_EDP_PHY_SIDDQ_OFF ;
 int GRF_EDP_PHY_SIDDQ_ON ;
 int GRF_SOC_CON12 ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 struct rockchip_dp_phy* phy_get_drvdata (struct phy*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int rockchip_set_phy_state(struct phy *phy, bool enable)
{
 struct rockchip_dp_phy *dp = phy_get_drvdata(phy);
 int ret;

 if (enable) {
  ret = regmap_write(dp->grf, GRF_SOC_CON12,
       GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
       GRF_EDP_PHY_SIDDQ_ON);
  if (ret < 0) {
   dev_err(dp->dev, "Can't enable PHY power %d\n", ret);
   return ret;
  }

  ret = clk_prepare_enable(dp->phy_24m);
 } else {
  clk_disable_unprepare(dp->phy_24m);

  ret = regmap_write(dp->grf, GRF_SOC_CON12,
       GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
       GRF_EDP_PHY_SIDDQ_OFF);
 }

 return ret;
}
