
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct regulator_config {int init_data; int regmap; struct da9052_regulator* driver_data; int dev; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mfd_cell {size_t id; } ;
struct da9052_regulator {int rdev; TYPE_1__* info; struct da9052* da9052; } ;
struct da9052_pdata {int * regulators; } ;
struct da9052 {int regmap; int dev; int chip_id; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_6__ {TYPE_3__ reg_desc; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct da9052* dev_get_drvdata (int ) ;
 struct da9052_pdata* dev_get_platdata (int ) ;
 struct da9052_regulator* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_regulator_register (TYPE_2__*,TYPE_3__*,struct regulator_config*) ;
 TYPE_1__* find_regulator_info (int ,size_t) ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct da9052_regulator*) ;

__attribute__((used)) static int da9052_regulator_probe(struct platform_device *pdev)
{
 const struct mfd_cell *cell = mfd_get_cell(pdev);
 struct regulator_config config = { };
 struct da9052_regulator *regulator;
 struct da9052 *da9052;
 struct da9052_pdata *pdata;

 regulator = devm_kzalloc(&pdev->dev, sizeof(struct da9052_regulator),
     GFP_KERNEL);
 if (!regulator)
  return -ENOMEM;

 da9052 = dev_get_drvdata(pdev->dev.parent);
 pdata = dev_get_platdata(da9052->dev);
 regulator->da9052 = da9052;

 regulator->info = find_regulator_info(regulator->da9052->chip_id,
           cell->id);
 if (regulator->info == ((void*)0)) {
  dev_err(&pdev->dev, "invalid regulator ID specified\n");
  return -EINVAL;
 }

 config.dev = da9052->dev;
 config.driver_data = regulator;
 config.regmap = da9052->regmap;
 if (pdata)
  config.init_data = pdata->regulators[cell->id];

 regulator->rdev = devm_regulator_register(&pdev->dev,
        &regulator->info->reg_desc,
        &config);
 if (IS_ERR(regulator->rdev)) {
  dev_err(&pdev->dev, "failed to register regulator %s\n",
   regulator->info->reg_desc.name);
  return PTR_ERR(regulator->rdev);
 }

 platform_set_drvdata(pdev, regulator);

 return 0;
}
