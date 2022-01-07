
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mtk_tphy {int dev; int u3phya_ref; } ;
struct mtk_phy_instance {int type; int ref_clk; } ;


 int EINVAL ;




 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 struct mtk_tphy* dev_get_drvdata (int ) ;
 int pcie_phy_instance_init (struct mtk_tphy*,struct mtk_phy_instance*) ;
 struct mtk_phy_instance* phy_get_drvdata (struct phy*) ;
 int sata_phy_instance_init (struct mtk_tphy*,struct mtk_phy_instance*) ;
 int u2_phy_instance_init (struct mtk_tphy*,struct mtk_phy_instance*) ;
 int u2_phy_props_set (struct mtk_tphy*,struct mtk_phy_instance*) ;
 int u3_phy_instance_init (struct mtk_tphy*,struct mtk_phy_instance*) ;

__attribute__((used)) static int mtk_phy_init(struct phy *phy)
{
 struct mtk_phy_instance *instance = phy_get_drvdata(phy);
 struct mtk_tphy *tphy = dev_get_drvdata(phy->dev.parent);
 int ret;

 ret = clk_prepare_enable(tphy->u3phya_ref);
 if (ret) {
  dev_err(tphy->dev, "failed to enable u3phya_ref\n");
  return ret;
 }

 ret = clk_prepare_enable(instance->ref_clk);
 if (ret) {
  dev_err(tphy->dev, "failed to enable ref_clk\n");
  return ret;
 }

 switch (instance->type) {
 case 129:
  u2_phy_instance_init(tphy, instance);
  u2_phy_props_set(tphy, instance);
  break;
 case 128:
  u3_phy_instance_init(tphy, instance);
  break;
 case 131:
  pcie_phy_instance_init(tphy, instance);
  break;
 case 130:
  sata_phy_instance_init(tphy, instance);
  break;
 default:
  dev_err(tphy->dev, "incompatible PHY type\n");
  return -EINVAL;
 }

 return 0;
}
