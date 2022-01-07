
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_init_data {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; int of_node; struct regulator_init_data const* init_data; int dev; } ;
struct device {int parent; int of_node; } ;
struct platform_device {struct device dev; } ;


 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_get_drvdata (int ) ;
 struct regulator_init_data* dev_get_platdata (struct device*) ;
 struct regulator_dev* devm_regulator_register (struct device*,int *,struct regulator_config*) ;
 int platform_set_drvdata (struct platform_device*,struct regulator_dev*) ;
 int sky81452_reg ;

__attribute__((used)) static int sky81452_reg_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const struct regulator_init_data *init_data = dev_get_platdata(dev);
 struct regulator_config config = { };
 struct regulator_dev *rdev;

 config.dev = dev->parent;
 config.init_data = init_data;
 config.of_node = dev->of_node;
 config.regmap = dev_get_drvdata(dev->parent);

 rdev = devm_regulator_register(dev, &sky81452_reg, &config);
 if (IS_ERR(rdev)) {
  dev_err(dev, "failed to register. err=%ld\n", PTR_ERR(rdev));
  return PTR_ERR(rdev);
 }

 platform_set_drvdata(pdev, rdev);

 return 0;
}
