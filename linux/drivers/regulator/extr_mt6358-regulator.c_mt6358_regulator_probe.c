
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; TYPE_1__* driver_data; TYPE_2__* dev; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mt6397_chip {int regmap; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_5__ {TYPE_3__ desc; } ;


 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int MT6358_MAX_REGULATOR ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_2__*,char*,int ) ;
 struct mt6397_chip* dev_get_drvdata (int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,TYPE_3__*,struct regulator_config*) ;
 TYPE_1__* mt6358_regulators ;

__attribute__((used)) static int mt6358_regulator_probe(struct platform_device *pdev)
{
 struct mt6397_chip *mt6397 = dev_get_drvdata(pdev->dev.parent);
 struct regulator_config config = {};
 struct regulator_dev *rdev;
 int i;

 for (i = 0; i < MT6358_MAX_REGULATOR; i++) {
  config.dev = &pdev->dev;
  config.driver_data = &mt6358_regulators[i];
  config.regmap = mt6397->regmap;

  rdev = devm_regulator_register(&pdev->dev,
            &mt6358_regulators[i].desc,
            &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register %s\n",
    mt6358_regulators[i].desc.name);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
