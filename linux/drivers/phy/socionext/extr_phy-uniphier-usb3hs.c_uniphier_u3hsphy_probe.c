
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_u3hsphy_priv {struct phy* vbus; struct phy* rst_parent; struct phy* rst; struct phy* clk_ext; struct phy* clk_parent; struct phy* clk; struct phy* base; TYPE_1__* data; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {scalar_t__ nparams; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct phy*) ;
 scalar_t__ MAX_PHY_PARAMS ;
 int PTR_ERR (struct phy*) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 scalar_t__ WARN_ON (int) ;
 void* devm_clk_get (struct device*,char*) ;
 struct phy* devm_clk_get_optional (struct device*,char*) ;
 struct phy* devm_ioremap_resource (struct device*,struct resource*) ;
 struct uniphier_u3hsphy_priv* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy* devm_phy_create (struct device*,int ,int *) ;
 struct phy* devm_regulator_get_optional (struct device*,char*) ;
 void* devm_reset_control_get_shared (struct device*,char*) ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (struct phy*,struct uniphier_u3hsphy_priv*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int uniphier_u3hsphy_ops ;

__attribute__((used)) static int uniphier_u3hsphy_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct uniphier_u3hsphy_priv *priv;
 struct phy_provider *phy_provider;
 struct resource *res;
 struct phy *phy;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = dev;
 priv->data = of_device_get_match_data(dev);
 if (WARN_ON(!priv->data ||
      priv->data->nparams > MAX_PHY_PARAMS))
  return -EINVAL;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 priv->clk = devm_clk_get(dev, "phy");
 if (IS_ERR(priv->clk))
  return PTR_ERR(priv->clk);

 priv->clk_parent = devm_clk_get(dev, "link");
 if (IS_ERR(priv->clk_parent))
  return PTR_ERR(priv->clk_parent);

 priv->clk_ext = devm_clk_get_optional(dev, "phy-ext");
 if (IS_ERR(priv->clk_ext))
  return PTR_ERR(priv->clk_ext);

 priv->rst = devm_reset_control_get_shared(dev, "phy");
 if (IS_ERR(priv->rst))
  return PTR_ERR(priv->rst);

 priv->rst_parent = devm_reset_control_get_shared(dev, "link");
 if (IS_ERR(priv->rst_parent))
  return PTR_ERR(priv->rst_parent);

 priv->vbus = devm_regulator_get_optional(dev, "vbus");
 if (IS_ERR(priv->vbus)) {
  if (PTR_ERR(priv->vbus) == -EPROBE_DEFER)
   return PTR_ERR(priv->vbus);
  priv->vbus = ((void*)0);
 }

 phy = devm_phy_create(dev, dev->of_node, &uniphier_u3hsphy_ops);
 if (IS_ERR(phy))
  return PTR_ERR(phy);

 phy_set_drvdata(phy, priv);
 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
