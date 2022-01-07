
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {TYPE_1__* driver_data; int regmap; int dev; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct hi6421_pmic {int regmap; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_6__ {TYPE_3__ rdesc; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct hi6421_pmic* dev_get_drvdata (int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,TYPE_3__*,struct regulator_config*) ;
 TYPE_1__* hi6421v530_regulator_info ;

__attribute__((used)) static int hi6421v530_regulator_probe(struct platform_device *pdev)
{
 struct hi6421_pmic *pmic;
 struct regulator_dev *rdev;
 struct regulator_config config = { };
 unsigned int i;

 pmic = dev_get_drvdata(pdev->dev.parent);
 if (!pmic) {
  dev_err(&pdev->dev, "no pmic in the regulator parent node\n");
  return -ENODEV;
 }

 for (i = 0; i < ARRAY_SIZE(hi6421v530_regulator_info); i++) {
  config.dev = pdev->dev.parent;
  config.regmap = pmic->regmap;
  config.driver_data = &hi6421v530_regulator_info[i];

  rdev = devm_regulator_register(&pdev->dev,
    &hi6421v530_regulator_info[i].rdesc,
    &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register regulator %s\n",
    hi6421v530_regulator_info[i].rdesc.name);
   return PTR_ERR(rdev);
  }
 }
 return 0;
}
