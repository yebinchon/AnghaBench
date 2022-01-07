
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct ltq_rcu_usb2_priv {struct device* dev; struct phy_provider* phy; int phy_reset; int ctrl_reset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PTR_ERR (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct ltq_rcu_usb2_priv*) ;
 struct ltq_rcu_usb2_priv* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy_provider* devm_phy_create (struct device*,int ,int *) ;
 int ltq_rcu_usb2_of_parse (struct ltq_rcu_usb2_priv*,struct platform_device*) ;
 int ltq_rcu_usb2_phy_ops ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (struct phy_provider*,struct ltq_rcu_usb2_priv*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int ltq_rcu_usb2_phy_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ltq_rcu_usb2_priv *priv;
 struct phy_provider *provider;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = dev;

 ret = ltq_rcu_usb2_of_parse(priv, pdev);
 if (ret)
  return ret;


 reset_control_deassert(priv->ctrl_reset);

 reset_control_assert(priv->phy_reset);

 priv->phy = devm_phy_create(dev, dev->of_node, &ltq_rcu_usb2_phy_ops);
 if (IS_ERR(priv->phy)) {
  dev_err(dev, "failed to create PHY\n");
  return PTR_ERR(priv->phy);
 }

 phy_set_drvdata(priv->phy, priv);

 provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 if (IS_ERR(provider))
  return PTR_ERR(provider);

 dev_set_drvdata(priv->dev, priv);
 return 0;
}
