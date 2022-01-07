
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct regulator_config {int init_data; int regmap; struct da9055_regulator* driver_data; int dev; } ;
struct TYPE_8__ {int parent; } ;
struct platform_device {size_t id; TYPE_2__ dev; int name; } ;
struct da9055_regulator {int rdev; TYPE_1__* info; struct da9055* da9055; } ;
struct da9055_pdata {int * regulators; } ;
struct da9055 {int regmap; int dev; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_7__ {TYPE_4__ reg_desc; } ;


 size_t DA9055_ID_LDO5 ;
 size_t DA9055_ID_LDO6 ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_PROBE_SHARED ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int da9055_gpio_init (struct da9055_regulator*,struct regulator_config*,struct da9055_pdata*,size_t) ;
 int da9055_ldo5_6_oc_irq ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct da9055* dev_get_drvdata (int ) ;
 struct da9055_pdata* dev_get_platdata (int ) ;
 struct da9055_regulator* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_regulator_register (TYPE_2__*,TYPE_4__*,struct regulator_config*) ;
 int devm_request_threaded_irq (TYPE_2__*,int,int *,int ,int,int ,struct da9055_regulator*) ;
 TYPE_1__* find_regulator_info (size_t) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct da9055_regulator*) ;

__attribute__((used)) static int da9055_regulator_probe(struct platform_device *pdev)
{
 struct regulator_config config = { };
 struct da9055_regulator *regulator;
 struct da9055 *da9055 = dev_get_drvdata(pdev->dev.parent);
 struct da9055_pdata *pdata = dev_get_platdata(da9055->dev);
 int ret, irq;

 regulator = devm_kzalloc(&pdev->dev, sizeof(struct da9055_regulator),
     GFP_KERNEL);
 if (!regulator)
  return -ENOMEM;

 regulator->info = find_regulator_info(pdev->id);
 if (regulator->info == ((void*)0)) {
  dev_err(&pdev->dev, "invalid regulator ID specified\n");
  return -EINVAL;
 }

 regulator->da9055 = da9055;
 config.dev = da9055->dev;
 config.driver_data = regulator;
 config.regmap = da9055->regmap;

 if (pdata)
  config.init_data = pdata->regulators[pdev->id];

 ret = da9055_gpio_init(regulator, &config, pdata, pdev->id);
 if (ret < 0)
  return ret;

 regulator->rdev = devm_regulator_register(&pdev->dev,
        &regulator->info->reg_desc,
        &config);
 if (IS_ERR(regulator->rdev)) {
  dev_err(&pdev->dev, "Failed to register regulator %s\n",
   regulator->info->reg_desc.name);
  return PTR_ERR(regulator->rdev);
 }


 if (pdev->id == DA9055_ID_LDO5 || pdev->id == DA9055_ID_LDO6) {
  irq = platform_get_irq_byname(pdev, "REGULATOR");
  if (irq < 0)
   return irq;

  ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
      da9055_ldo5_6_oc_irq,
      IRQF_TRIGGER_HIGH |
      IRQF_ONESHOT |
      IRQF_PROBE_SHARED,
      pdev->name, regulator);
  if (ret != 0) {
   if (ret != -EBUSY) {
    dev_err(&pdev->dev,
    "Failed to request Regulator IRQ %d: %d\n",
    irq, ret);
    return ret;
   }
  }
 }

 platform_set_drvdata(pdev, regulator);

 return 0;
}
