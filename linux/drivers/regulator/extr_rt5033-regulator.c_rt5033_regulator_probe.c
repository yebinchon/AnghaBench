
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rt5033_dev {int regmap; int dev; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; struct rt5033_dev* driver_data; int dev; } ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_1__*,char*,int,int) ;
 struct rt5033_dev* dev_get_drvdata (int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,int *,struct regulator_config*) ;
 int * rt5033_supported_regulators ;

__attribute__((used)) static int rt5033_regulator_probe(struct platform_device *pdev)
{
 struct rt5033_dev *rt5033 = dev_get_drvdata(pdev->dev.parent);
 int ret, i;
 struct regulator_config config = {};

 config.dev = rt5033->dev;
 config.driver_data = rt5033;

 for (i = 0; i < ARRAY_SIZE(rt5033_supported_regulators); i++) {
  struct regulator_dev *regulator;

  config.regmap = rt5033->regmap;

  regulator = devm_regulator_register(&pdev->dev,
    &rt5033_supported_regulators[i], &config);
  if (IS_ERR(regulator)) {
   ret = PTR_ERR(regulator);
   dev_err(&pdev->dev,
    "Regulator init failed %d: with error: %d\n",
    i, ret);
   return ret;
  }
 }

 return 0;
}
