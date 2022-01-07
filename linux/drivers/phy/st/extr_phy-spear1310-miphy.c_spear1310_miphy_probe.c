
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear1310_miphy_priv {struct phy_provider* phy; int id; struct phy_provider* misc; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PTR_ERR (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct spear1310_miphy_priv*) ;
 struct spear1310_miphy_priv* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy_provider* devm_phy_create (struct device*,int *,int *) ;
 scalar_t__ of_property_read_u32 (int ,char*,int *) ;
 int phy_set_drvdata (struct phy_provider*,struct spear1310_miphy_priv*) ;
 int spear1310_miphy_ops ;
 int spear1310_miphy_xlate ;
 struct phy_provider* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int spear1310_miphy_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct spear1310_miphy_priv *priv;
 struct phy_provider *phy_provider;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->misc =
  syscon_regmap_lookup_by_phandle(dev->of_node, "misc");
 if (IS_ERR(priv->misc)) {
  dev_err(dev, "failed to find misc regmap\n");
  return PTR_ERR(priv->misc);
 }

 if (of_property_read_u32(dev->of_node, "phy-id", &priv->id)) {
  dev_err(dev, "failed to find phy id\n");
  return -EINVAL;
 }

 priv->phy = devm_phy_create(dev, ((void*)0), &spear1310_miphy_ops);
 if (IS_ERR(priv->phy)) {
  dev_err(dev, "failed to create SATA PCIe PHY\n");
  return PTR_ERR(priv->phy);
 }

 dev_set_drvdata(dev, priv);
 phy_set_drvdata(priv->phy, priv);

 phy_provider =
  devm_of_phy_provider_register(dev, spear1310_miphy_xlate);
 if (IS_ERR(phy_provider)) {
  dev_err(dev, "failed to register phy provider\n");
  return PTR_ERR(phy_provider);
 }

 return 0;
}
