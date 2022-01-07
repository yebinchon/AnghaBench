
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_gmii_sel_priv {int phy_provider; int regmap; int soc_data; struct device* dev; } ;
struct of_device_id {int data; } ;
struct device_node {int parent; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct phy_gmii_sel_priv*) ;
 struct phy_gmii_sel_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_phy_provider_register (struct device*,int ) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 int phy_gmii_sel_id_table ;
 int phy_gmii_sel_init_ports (struct phy_gmii_sel_priv*) ;
 int phy_gmii_sel_of_xlate ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int phy_gmii_sel_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 const struct of_device_id *of_id;
 struct phy_gmii_sel_priv *priv;
 int ret;

 of_id = of_match_node(phy_gmii_sel_id_table, pdev->dev.of_node);
 if (!of_id)
  return -EINVAL;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = &pdev->dev;
 priv->soc_data = of_id->data;

 priv->regmap = syscon_node_to_regmap(node->parent);
 if (IS_ERR(priv->regmap)) {
  ret = PTR_ERR(priv->regmap);
  dev_err(dev, "Failed to get syscon %d\n", ret);
  return ret;
 }

 ret = phy_gmii_sel_init_ports(priv);
 if (ret)
  return ret;

 dev_set_drvdata(&pdev->dev, priv);

 priv->phy_provider =
  devm_of_phy_provider_register(dev,
           phy_gmii_sel_of_xlate);
 if (IS_ERR(priv->phy_provider)) {
  ret = PTR_ERR(priv->phy_provider);
  dev_err(dev, "Failed to create phy provider %d\n", ret);
  return ret;
 }

 return 0;
}
