
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mtk_tphy {int u3phya_ref; } ;
struct mtk_phy_instance {scalar_t__ type; int ref_clk; } ;


 scalar_t__ PHY_TYPE_USB2 ;
 int clk_disable_unprepare (int ) ;
 struct mtk_tphy* dev_get_drvdata (int ) ;
 struct mtk_phy_instance* phy_get_drvdata (struct phy*) ;
 int u2_phy_instance_exit (struct mtk_tphy*,struct mtk_phy_instance*) ;

__attribute__((used)) static int mtk_phy_exit(struct phy *phy)
{
 struct mtk_phy_instance *instance = phy_get_drvdata(phy);
 struct mtk_tphy *tphy = dev_get_drvdata(phy->dev.parent);

 if (instance->type == PHY_TYPE_USB2)
  u2_phy_instance_exit(tphy, instance);

 clk_disable_unprepare(instance->ref_clk);
 clk_disable_unprepare(tphy->u3phya_ref);
 return 0;
}
