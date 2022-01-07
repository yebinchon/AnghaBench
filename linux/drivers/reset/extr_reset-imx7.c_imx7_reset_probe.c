
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap_config {char* name; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct imx7_src_variant {int ops; int signals_num; int signals; } ;
struct TYPE_2__ {int of_node; int * ops; int nr_resets; int owner; } ;
struct imx7_src {TYPE_1__ rcdev; int regmap; int signals; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 struct imx7_src* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_controller_register (struct device*,TYPE_1__*) ;
 struct imx7_src_variant* of_device_get_match_data (struct device*) ;
 int regmap_attach_dev (struct device*,int ,struct regmap_config*) ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int imx7_reset_probe(struct platform_device *pdev)
{
 struct imx7_src *imx7src;
 struct device *dev = &pdev->dev;
 struct regmap_config config = { .name = "src" };
 const struct imx7_src_variant *variant = of_device_get_match_data(dev);

 imx7src = devm_kzalloc(dev, sizeof(*imx7src), GFP_KERNEL);
 if (!imx7src)
  return -ENOMEM;

 imx7src->signals = variant->signals;
 imx7src->regmap = syscon_node_to_regmap(dev->of_node);
 if (IS_ERR(imx7src->regmap)) {
  dev_err(dev, "Unable to get imx7-src regmap");
  return PTR_ERR(imx7src->regmap);
 }
 regmap_attach_dev(dev, imx7src->regmap, &config);

 imx7src->rcdev.owner = THIS_MODULE;
 imx7src->rcdev.nr_resets = variant->signals_num;
 imx7src->rcdev.ops = &variant->ops;
 imx7src->rcdev.of_node = dev->of_node;

 return devm_reset_controller_register(dev, &imx7src->rcdev);
}
