
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct tps65218 {unsigned int* strobes; int regmap; TYPE_5__* dev; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; struct tps65218* driver_data; TYPE_2__* dev; } ;
struct TYPE_8__ {int of_node; int parent; } ;
struct platform_device {int name; TYPE_2__ dev; } ;
struct TYPE_9__ {int of_node; } ;
struct TYPE_7__ {unsigned int bypass_mask; int bypass_reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int TPS65218_NUM_REGULATOR ;
 int dev_err (TYPE_5__*,char*,int ) ;
 struct tps65218* dev_get_drvdata (int ) ;
 unsigned int* devm_kcalloc (TYPE_2__*,int ,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,TYPE_1__*,struct regulator_config*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 TYPE_1__* regulators ;

__attribute__((used)) static int tps65218_regulator_probe(struct platform_device *pdev)
{
 struct tps65218 *tps = dev_get_drvdata(pdev->dev.parent);
 struct regulator_dev *rdev;
 struct regulator_config config = { };
 int i, ret;
 unsigned int val;

 config.dev = &pdev->dev;
 config.dev->of_node = tps->dev->of_node;
 config.driver_data = tps;
 config.regmap = tps->regmap;


 tps->strobes = devm_kcalloc(&pdev->dev,
        TPS65218_NUM_REGULATOR, sizeof(u8),
        GFP_KERNEL);
 if (!tps->strobes)
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(regulators); i++) {
  rdev = devm_regulator_register(&pdev->dev, &regulators[i],
            &config);
  if (IS_ERR(rdev)) {
   dev_err(tps->dev, "failed to register %s regulator\n",
    pdev->name);
   return PTR_ERR(rdev);
  }

  ret = regmap_read(tps->regmap, regulators[i].bypass_reg, &val);
  if (ret)
   return ret;

  tps->strobes[i] = val & regulators[i].bypass_mask;
 }

 return 0;
}
