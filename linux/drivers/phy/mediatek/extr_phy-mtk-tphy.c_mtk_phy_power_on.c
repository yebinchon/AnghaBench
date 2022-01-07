
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mtk_tphy {int dummy; } ;
struct mtk_phy_instance {scalar_t__ type; } ;


 scalar_t__ PHY_TYPE_PCIE ;
 scalar_t__ PHY_TYPE_USB2 ;
 struct mtk_tphy* dev_get_drvdata (int ) ;
 int hs_slew_rate_calibrate (struct mtk_tphy*,struct mtk_phy_instance*) ;
 int pcie_phy_instance_power_on (struct mtk_tphy*,struct mtk_phy_instance*) ;
 struct mtk_phy_instance* phy_get_drvdata (struct phy*) ;
 int u2_phy_instance_power_on (struct mtk_tphy*,struct mtk_phy_instance*) ;

__attribute__((used)) static int mtk_phy_power_on(struct phy *phy)
{
 struct mtk_phy_instance *instance = phy_get_drvdata(phy);
 struct mtk_tphy *tphy = dev_get_drvdata(phy->dev.parent);

 if (instance->type == PHY_TYPE_USB2) {
  u2_phy_instance_power_on(tphy, instance);
  hs_slew_rate_calibrate(tphy, instance);
 } else if (instance->type == PHY_TYPE_PCIE) {
  pcie_phy_instance_power_on(tphy, instance);
 }

 return 0;
}
