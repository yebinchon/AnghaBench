
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct berlin_pinctrl_desc {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int berlin_pinctrl_probe_regmap (struct platform_device*,struct berlin_pinctrl_desc const*,struct regmap*) ;
 struct device_node* of_get_parent (int ) ;
 int of_node_put (struct device_node*) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;

int berlin_pinctrl_probe(struct platform_device *pdev,
    const struct berlin_pinctrl_desc *desc)
{
 struct device *dev = &pdev->dev;
 struct device_node *parent_np = of_get_parent(dev->of_node);
 struct regmap *regmap = syscon_node_to_regmap(parent_np);

 of_node_put(parent_np);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return berlin_pinctrl_probe_regmap(pdev, desc, regmap);
}
