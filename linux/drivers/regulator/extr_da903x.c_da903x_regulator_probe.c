
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {struct da903x_regulator_info* driver_data; int init_data; int * dev; } ;
struct platform_device {int dev; int id; } ;
struct TYPE_2__ {scalar_t__ id; int n_voltages; int name; int * ops; int n_linear_ranges; int linear_ranges; } ;
struct da903x_regulator_info {TYPE_1__ desc; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ DA9030_ID_LDO1 ;
 scalar_t__ DA9030_ID_LDO14 ;
 scalar_t__ DA9030_ID_LDO15 ;
 scalar_t__ DA9034_ID_LDO12 ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int da9030_regulator_ldo14_ops ;
 int da9030_regulator_ldo1_15_ops ;
 int da9034_ldo12_ranges ;
 int da9034_regulator_ldo12_ops ;
 int dev_err (int *,char*,...) ;
 int dev_get_platdata (int *) ;
 struct regulator_dev* devm_regulator_register (int *,TYPE_1__*,struct regulator_config*) ;
 struct da903x_regulator_info* find_regulator_info (int ) ;
 int platform_set_drvdata (struct platform_device*,struct regulator_dev*) ;

__attribute__((used)) static int da903x_regulator_probe(struct platform_device *pdev)
{
 struct da903x_regulator_info *ri = ((void*)0);
 struct regulator_dev *rdev;
 struct regulator_config config = { };

 ri = find_regulator_info(pdev->id);
 if (ri == ((void*)0)) {
  dev_err(&pdev->dev, "invalid regulator ID specified\n");
  return -EINVAL;
 }


 if (ri->desc.id == DA9034_ID_LDO12) {
  ri->desc.ops = &da9034_regulator_ldo12_ops;
  ri->desc.n_voltages = 16;
  ri->desc.linear_ranges = da9034_ldo12_ranges;
  ri->desc.n_linear_ranges = ARRAY_SIZE(da9034_ldo12_ranges);
 }

 if (ri->desc.id == DA9030_ID_LDO14)
  ri->desc.ops = &da9030_regulator_ldo14_ops;

 if (ri->desc.id == DA9030_ID_LDO1 || ri->desc.id == DA9030_ID_LDO15)
  ri->desc.ops = &da9030_regulator_ldo1_15_ops;

 config.dev = &pdev->dev;
 config.init_data = dev_get_platdata(&pdev->dev);
 config.driver_data = ri;

 rdev = devm_regulator_register(&pdev->dev, &ri->desc, &config);
 if (IS_ERR(rdev)) {
  dev_err(&pdev->dev, "failed to register regulator %s\n",
    ri->desc.name);
  return PTR_ERR(rdev);
 }

 platform_set_drvdata(pdev, rdev);
 return 0;
}
