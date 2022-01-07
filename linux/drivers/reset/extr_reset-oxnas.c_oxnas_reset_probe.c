
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int of_node; struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int nr_resets; int of_node; int * ops; int owner; } ;
struct oxnas_reset {TYPE_2__ rcdev; int regmap; } ;
struct device {int of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*) ;
 struct oxnas_reset* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_reset_controller_register (TYPE_1__*,TYPE_2__*) ;
 int oxnas_reset_ops ;
 int platform_set_drvdata (struct platform_device*,struct oxnas_reset*) ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int oxnas_reset_probe(struct platform_device *pdev)
{
 struct oxnas_reset *data;
 struct device *parent;

 parent = pdev->dev.parent;
 if (!parent) {
  dev_err(&pdev->dev, "no parent\n");
  return -ENODEV;
 }

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->regmap = syscon_node_to_regmap(parent->of_node);
 if (IS_ERR(data->regmap)) {
  dev_err(&pdev->dev, "failed to get parent regmap\n");
  return PTR_ERR(data->regmap);
 }

 platform_set_drvdata(pdev, data);

 data->rcdev.owner = THIS_MODULE;
 data->rcdev.nr_resets = 32;
 data->rcdev.ops = &oxnas_reset_ops;
 data->rcdev.of_node = pdev->dev.of_node;

 return devm_reset_controller_register(&pdev->dev, &data->rcdev);
}
