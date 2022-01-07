
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mtk_tphy {int dummy; } ;
struct mtk_phy_instance {scalar_t__ type; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 scalar_t__ PHY_TYPE_USB2 ;
 struct mtk_tphy* dev_get_drvdata (int ) ;
 struct mtk_phy_instance* phy_get_drvdata (struct phy*) ;
 int u2_phy_instance_set_mode (struct mtk_tphy*,struct mtk_phy_instance*,int) ;

__attribute__((used)) static int mtk_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
{
 struct mtk_phy_instance *instance = phy_get_drvdata(phy);
 struct mtk_tphy *tphy = dev_get_drvdata(phy->dev.parent);

 if (instance->type == PHY_TYPE_USB2)
  u2_phy_instance_set_mode(tphy, instance, mode);

 return 0;
}
