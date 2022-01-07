
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct regulator_config {int regmap; struct da9062_regulator* driver_data; int dev; } ;
struct TYPE_9__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct da9062_regulators {int n_regulators; int irq_ldo_lim; struct da9062_regulator* regulator; } ;
struct TYPE_11__ {scalar_t__ reg; } ;
struct TYPE_10__ {int name; int owner; int type; } ;
struct da9062_regulator_info {TYPE_5__ suspend_sleep; TYPE_5__ sleep; TYPE_5__ suspend; TYPE_5__ mode; TYPE_3__ desc; } ;
struct da9062_regulator {void* rdev; TYPE_3__ desc; void* suspend_sleep; struct da9062_regulator_info const* info; void* sleep; void* suspend; void* mode; struct da9062* hw; } ;
struct da9062 {int chip_type; int regmap; int dev; } ;
typedef int config ;




 int DA9061_MAX_REGULATORS ;
 int DA9062_MAX_REGULATORS ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int da9062_ldo_lim_event ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct da9062* dev_get_drvdata (int ) ;
 int dev_warn (TYPE_1__*,char*) ;
 struct da9062_regulators* devm_kzalloc (TYPE_1__*,int ,int ) ;
 void* devm_regmap_field_alloc (TYPE_1__*,int ,TYPE_5__) ;
 void* devm_regulator_register (TYPE_1__*,TYPE_3__*,struct regulator_config*) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int,char*,struct da9062_regulators*) ;
 struct da9062_regulator_info* local_da9061_regulator_info ;
 struct da9062_regulator_info* local_da9062_regulator_info ;
 int memset (struct regulator_config*,int ,int) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct da9062_regulators*) ;
 int regulator ;
 int struct_size (struct da9062_regulators*,int ,int) ;

__attribute__((used)) static int da9062_regulator_probe(struct platform_device *pdev)
{
 struct da9062 *chip = dev_get_drvdata(pdev->dev.parent);
 struct da9062_regulators *regulators;
 struct da9062_regulator *regl;
 struct regulator_config config = { };
 const struct da9062_regulator_info *rinfo;
 int irq, n, ret;
 int max_regulators;

 switch (chip->chip_type) {
 case 129:
  max_regulators = DA9061_MAX_REGULATORS;
  rinfo = local_da9061_regulator_info;
  break;
 case 128:
  max_regulators = DA9062_MAX_REGULATORS;
  rinfo = local_da9062_regulator_info;
  break;
 default:
  dev_err(chip->dev, "Unrecognised chip type\n");
  return -ENODEV;
 }


 regulators = devm_kzalloc(&pdev->dev, struct_size(regulators, regulator,
      max_regulators), GFP_KERNEL);
 if (!regulators)
  return -ENOMEM;

 regulators->n_regulators = max_regulators;
 platform_set_drvdata(pdev, regulators);

 n = 0;
 while (n < regulators->n_regulators) {

  regl = &regulators->regulator[n];
  regl->hw = chip;
  regl->info = &rinfo[n];
  regl->desc = regl->info->desc;
  regl->desc.type = REGULATOR_VOLTAGE;
  regl->desc.owner = THIS_MODULE;

  if (regl->info->mode.reg) {
   regl->mode = devm_regmap_field_alloc(
     &pdev->dev,
     chip->regmap,
     regl->info->mode);
   if (IS_ERR(regl->mode))
    return PTR_ERR(regl->mode);
  }

  if (regl->info->suspend.reg) {
   regl->suspend = devm_regmap_field_alloc(
     &pdev->dev,
     chip->regmap,
     regl->info->suspend);
   if (IS_ERR(regl->suspend))
    return PTR_ERR(regl->suspend);
  }

  if (regl->info->sleep.reg) {
   regl->sleep = devm_regmap_field_alloc(
     &pdev->dev,
     chip->regmap,
     regl->info->sleep);
   if (IS_ERR(regl->sleep))
    return PTR_ERR(regl->sleep);
  }

  if (regl->info->suspend_sleep.reg) {
   regl->suspend_sleep = devm_regmap_field_alloc(
     &pdev->dev,
     chip->regmap,
     regl->info->suspend_sleep);
   if (IS_ERR(regl->suspend_sleep))
    return PTR_ERR(regl->suspend_sleep);
  }


  memset(&config, 0, sizeof(config));
  config.dev = chip->dev;
  config.driver_data = regl;
  config.regmap = chip->regmap;

  regl->rdev = devm_regulator_register(&pdev->dev, &regl->desc,
           &config);
  if (IS_ERR(regl->rdev)) {
   dev_err(&pdev->dev,
    "Failed to register %s regulator\n",
    regl->desc.name);
   return PTR_ERR(regl->rdev);
  }

  n++;
 }


 irq = platform_get_irq_byname(pdev, "LDO_LIM");
 if (irq < 0)
  return irq;
 regulators->irq_ldo_lim = irq;

 ret = devm_request_threaded_irq(&pdev->dev, irq,
     ((void*)0), da9062_ldo_lim_event,
     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
     "LDO_LIM", regulators);
 if (ret) {
  dev_warn(&pdev->dev,
    "Failed to request LDO_LIM IRQ.\n");
  regulators->irq_ldo_lim = -ENXIO;
 }

 return 0;
}
