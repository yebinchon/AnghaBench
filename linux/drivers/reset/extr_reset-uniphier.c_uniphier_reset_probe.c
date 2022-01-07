
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int nr_resets; int of_node; int owner; int * ops; } ;
struct uniphier_reset_priv {TYPE_2__ rcdev; struct uniphier_reset_data const* data; struct regmap* regmap; struct device* dev; } ;
struct uniphier_reset_data {scalar_t__ id; } ;
struct regmap {int dummy; } ;
struct device {int of_node; TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int owner; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 scalar_t__ UNIPHIER_RESET_ID_END ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*,int) ;
 struct uniphier_reset_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_controller_register (struct device*,TYPE_2__*) ;
 unsigned int max (unsigned int,scalar_t__) ;
 struct uniphier_reset_data* of_device_get_match_data (struct device*) ;
 struct device_node* of_get_parent (int ) ;
 int of_node_put (struct device_node*) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;
 int uniphier_reset_ops ;

__attribute__((used)) static int uniphier_reset_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct uniphier_reset_priv *priv;
 const struct uniphier_reset_data *p, *data;
 struct regmap *regmap;
 struct device_node *parent;
 unsigned int nr_resets = 0;

 data = of_device_get_match_data(dev);
 if (WARN_ON(!data))
  return -EINVAL;

 parent = of_get_parent(dev->of_node);
 regmap = syscon_node_to_regmap(parent);
 of_node_put(parent);
 if (IS_ERR(regmap)) {
  dev_err(dev, "failed to get regmap (error %ld)\n",
   PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 for (p = data; p->id != UNIPHIER_RESET_ID_END; p++)
  nr_resets = max(nr_resets, p->id + 1);

 priv->rcdev.ops = &uniphier_reset_ops;
 priv->rcdev.owner = dev->driver->owner;
 priv->rcdev.of_node = dev->of_node;
 priv->rcdev.nr_resets = nr_resets;
 priv->dev = dev;
 priv->regmap = regmap;
 priv->data = data;

 return devm_reset_controller_register(&pdev->dev, &priv->rcdev);
}
