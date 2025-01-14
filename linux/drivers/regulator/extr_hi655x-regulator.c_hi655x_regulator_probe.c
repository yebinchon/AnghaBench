
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {struct hi655x_regulator* driver_data; int regmap; int dev; } ;
struct TYPE_9__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int name; } ;
struct hi655x_regulator {TYPE_1__ rdesc; } ;
struct hi655x_pmic {int regmap; } ;
struct TYPE_8__ {int rdesc; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct hi655x_pmic* dev_get_drvdata (int ) ;
 struct hi655x_regulator* devm_kzalloc (TYPE_3__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_3__*,int *,struct regulator_config*) ;
 int platform_set_drvdata (struct platform_device*,struct hi655x_regulator*) ;
 TYPE_2__* regulators ;

__attribute__((used)) static int hi655x_regulator_probe(struct platform_device *pdev)
{
 unsigned int i;
 struct hi655x_regulator *regulator;
 struct hi655x_pmic *pmic;
 struct regulator_config config = { };
 struct regulator_dev *rdev;

 pmic = dev_get_drvdata(pdev->dev.parent);
 if (!pmic) {
  dev_err(&pdev->dev, "no pmic in the regulator parent node\n");
  return -ENODEV;
 }

 regulator = devm_kzalloc(&pdev->dev, sizeof(*regulator), GFP_KERNEL);
 if (!regulator)
  return -ENOMEM;

 platform_set_drvdata(pdev, regulator);

 config.dev = pdev->dev.parent;
 config.regmap = pmic->regmap;
 config.driver_data = regulator;
 for (i = 0; i < ARRAY_SIZE(regulators); i++) {
  rdev = devm_regulator_register(&pdev->dev,
            &regulators[i].rdesc,
            &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register regulator %s\n",
    regulator->rdesc.name);
   return PTR_ERR(rdev);
  }
 }
 return 0;
}
