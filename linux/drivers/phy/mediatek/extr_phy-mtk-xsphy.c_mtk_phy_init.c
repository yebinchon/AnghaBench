
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xsphy_instance {int type; int ref_clk; } ;
struct TYPE_2__ {int parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mtk_xsphy {int dev; } ;


 int EINVAL ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 struct mtk_xsphy* dev_get_drvdata (int ) ;
 struct xsphy_instance* phy_get_drvdata (struct phy*) ;
 int u2_phy_instance_init (struct mtk_xsphy*,struct xsphy_instance*) ;
 int u2_phy_props_set (struct mtk_xsphy*,struct xsphy_instance*) ;
 int u3_phy_props_set (struct mtk_xsphy*,struct xsphy_instance*) ;

__attribute__((used)) static int mtk_phy_init(struct phy *phy)
{
 struct xsphy_instance *inst = phy_get_drvdata(phy);
 struct mtk_xsphy *xsphy = dev_get_drvdata(phy->dev.parent);
 int ret;

 ret = clk_prepare_enable(inst->ref_clk);
 if (ret) {
  dev_err(xsphy->dev, "failed to enable ref_clk\n");
  return ret;
 }

 switch (inst->type) {
 case 129:
  u2_phy_instance_init(xsphy, inst);
  u2_phy_props_set(xsphy, inst);
  break;
 case 128:
  u3_phy_props_set(xsphy, inst);
  break;
 default:
  dev_err(xsphy->dev, "incompatible phy type\n");
  clk_disable_unprepare(inst->ref_clk);
  return -EINVAL;
 }

 return 0;
}
