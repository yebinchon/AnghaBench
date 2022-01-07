
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {struct regmap* regmap; TYPE_2__* dev; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct regmap* dev_get_regmap (int ,int *) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,TYPE_1__*,struct regulator_config*) ;
 TYPE_1__* regulators ;
 int sc2731_regulator_unlock (struct regmap*) ;

__attribute__((used)) static int sc2731_regulator_probe(struct platform_device *pdev)
{
 int i, ret;
 struct regmap *regmap;
 struct regulator_config config = { };
 struct regulator_dev *rdev;

 regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!regmap) {
  dev_err(&pdev->dev, "failed to get regmap.\n");
  return -ENODEV;
 }

 ret = sc2731_regulator_unlock(regmap);
 if (ret) {
  dev_err(&pdev->dev, "failed to release regulator lock\n");
  return ret;
 }

 config.dev = &pdev->dev;
 config.regmap = regmap;

 for (i = 0; i < ARRAY_SIZE(regulators); i++) {
  rdev = devm_regulator_register(&pdev->dev, &regulators[i],
            &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register regulator %s\n",
    regulators[i].name);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
