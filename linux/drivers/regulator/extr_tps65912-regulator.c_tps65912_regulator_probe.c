
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tps65912 {TYPE_2__* dev; int regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; TYPE_1__* dev; struct tps65912* driver_data; } ;
struct TYPE_3__ {int of_node; int parent; } ;
struct platform_device {int name; TYPE_1__ dev; } ;
struct TYPE_4__ {int of_node; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_2__*,char*,int ) ;
 struct tps65912* dev_get_drvdata (int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,int *,struct regulator_config*) ;
 int platform_set_drvdata (struct platform_device*,struct tps65912*) ;
 int * regulators ;

__attribute__((used)) static int tps65912_regulator_probe(struct platform_device *pdev)
{
 struct tps65912 *tps = dev_get_drvdata(pdev->dev.parent);
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 int i;

 platform_set_drvdata(pdev, tps);

 config.dev = &pdev->dev;
 config.driver_data = tps;
 config.dev->of_node = tps->dev->of_node;
 config.regmap = tps->regmap;

 for (i = 0; i < ARRAY_SIZE(regulators); i++) {
  rdev = devm_regulator_register(&pdev->dev, &regulators[i],
            &config);
  if (IS_ERR(rdev)) {
   dev_err(tps->dev, "failed to register %s regulator\n",
    pdev->name);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
