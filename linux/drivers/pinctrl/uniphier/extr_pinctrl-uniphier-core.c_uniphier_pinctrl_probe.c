
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_pinctrl_socdata {scalar_t__ npins; scalar_t__ pins; int functions_count; int functions; int groups_count; int groups; } ;
struct TYPE_4__ {int owner; int * confops; int * pmxops; int * pctlops; scalar_t__ npins; scalar_t__ pins; int name; } ;
struct uniphier_pinctrl_priv {int pctldev; TYPE_2__ pctldesc; struct uniphier_pinctrl_socdata const* socdata; int regmap; } ;
struct device {TYPE_1__* driver; int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int owner; int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 struct uniphier_pinctrl_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_pinctrl_register (struct device*,TYPE_2__*,struct uniphier_pinctrl_priv*) ;
 struct device_node* of_get_parent (int ) ;
 int of_node_put (struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct uniphier_pinctrl_priv*) ;
 int syscon_node_to_regmap (struct device_node*) ;
 int uniphier_confops ;
 int uniphier_pctlops ;
 int uniphier_pinctrl_pm_init (struct device*,struct uniphier_pinctrl_priv*) ;
 int uniphier_pmxops ;

int uniphier_pinctrl_probe(struct platform_device *pdev,
      const struct uniphier_pinctrl_socdata *socdata)
{
 struct device *dev = &pdev->dev;
 struct uniphier_pinctrl_priv *priv;
 struct device_node *parent;
 int ret;

 if (!socdata ||
     !socdata->pins || !socdata->npins ||
     !socdata->groups || !socdata->groups_count ||
     !socdata->functions || !socdata->functions_count) {
  dev_err(dev, "pinctrl socdata lacks necessary members\n");
  return -EINVAL;
 }

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 parent = of_get_parent(dev->of_node);
 priv->regmap = syscon_node_to_regmap(parent);
 of_node_put(parent);

 if (IS_ERR(priv->regmap)) {
  dev_err(dev, "failed to get regmap\n");
  return PTR_ERR(priv->regmap);
 }

 priv->socdata = socdata;
 priv->pctldesc.name = dev->driver->name;
 priv->pctldesc.pins = socdata->pins;
 priv->pctldesc.npins = socdata->npins;
 priv->pctldesc.pctlops = &uniphier_pctlops;
 priv->pctldesc.pmxops = &uniphier_pmxops;
 priv->pctldesc.confops = &uniphier_confops;
 priv->pctldesc.owner = dev->driver->owner;

 ret = uniphier_pinctrl_pm_init(dev, priv);
 if (ret)
  return ret;

 priv->pctldev = devm_pinctrl_register(dev, &priv->pctldesc, priv);
 if (IS_ERR(priv->pctldev)) {
  dev_err(dev, "failed to register UniPhier pinctrl driver\n");
  return PTR_ERR(priv->pctldev);
 }

 platform_set_drvdata(pdev, priv);

 return 0;
}
