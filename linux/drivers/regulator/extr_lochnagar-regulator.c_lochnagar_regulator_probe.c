
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct regulator_desc {int name; } ;
struct regulator_config {struct lochnagar* driver_data; int regmap; struct device* dev; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct regulator_desc* data; } ;
struct lochnagar {int regmap; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (struct device*,char*,int ,int) ;
 struct lochnagar* dev_get_drvdata (int ) ;
 struct regulator_dev* devm_regulator_register (struct device*,struct regulator_desc const*,struct regulator_config*) ;
 int lochnagar_of_match ;
 struct of_device_id* of_match_device (int ,struct device*) ;

__attribute__((used)) static int lochnagar_regulator_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct lochnagar *lochnagar = dev_get_drvdata(dev->parent);
 struct regulator_config config = { };
 const struct of_device_id *of_id;
 const struct regulator_desc *desc;
 struct regulator_dev *rdev;
 int ret;

 config.dev = dev;
 config.regmap = lochnagar->regmap;
 config.driver_data = lochnagar;

 of_id = of_match_device(lochnagar_of_match, dev);
 if (!of_id)
  return -EINVAL;

 desc = of_id->data;

 rdev = devm_regulator_register(dev, desc, &config);
 if (IS_ERR(rdev)) {
  ret = PTR_ERR(rdev);
  dev_err(dev, "Failed to register %s regulator: %d\n",
   desc->name, ret);
  return ret;
 }

 return 0;
}
