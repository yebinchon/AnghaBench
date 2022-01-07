
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct hi6220_priv {struct phy* reg; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 struct hi6220_priv* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy* devm_phy_create (struct device*,int *,int *) ;
 int hi6220_phy_init (struct hi6220_priv*) ;
 int hi6220_phy_ops ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (struct phy*,struct hi6220_priv*) ;
 struct phy* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int hi6220_phy_probe(struct platform_device *pdev)
{
 struct phy_provider *phy_provider;
 struct device *dev = &pdev->dev;
 struct phy *phy;
 struct hi6220_priv *priv;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = dev;
 priv->reg = syscon_regmap_lookup_by_phandle(dev->of_node,
     "hisilicon,peripheral-syscon");
 if (IS_ERR(priv->reg)) {
  dev_err(dev, "no hisilicon,peripheral-syscon\n");
  return PTR_ERR(priv->reg);
 }

 hi6220_phy_init(priv);

 phy = devm_phy_create(dev, ((void*)0), &hi6220_phy_ops);
 if (IS_ERR(phy))
  return PTR_ERR(phy);

 phy_set_drvdata(phy, priv);
 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 return PTR_ERR_OR_ZERO(phy_provider);
}
