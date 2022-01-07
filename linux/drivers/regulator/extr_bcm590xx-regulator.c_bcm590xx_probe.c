
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_desc {int dummy; } ;
struct regulator_config {int regmap; struct bcm590xx_reg* driver_data; int dev; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {int name; TYPE_1__ dev; } ;
struct bcm590xx_reg {TYPE_2__* desc; struct bcm590xx* mfd; } ;
struct bcm590xx_info {char* name; int n_linear_ranges; int linear_ranges; int n_voltages; int volt_table; int vin_name; } ;
struct bcm590xx {int dev; int regmap_pri; int regmap_sec; } ;
struct TYPE_7__ {char* name; int id; int enable_is_inverted; int owner; int type; int enable_reg; int enable_mask; int vsel_reg; int vsel_mask; int * ops; int n_linear_ranges; int linear_ranges; int n_voltages; int volt_table; int supply_name; void* regulators_node; void* of_match; } ;


 int BCM590XX_LDO_VSEL_MASK ;
 int BCM590XX_NUM_REGS ;
 int BCM590XX_REG_ENABLE ;
 scalar_t__ BCM590XX_REG_IS_GPLDO (int) ;
 scalar_t__ BCM590XX_REG_IS_LDO (int) ;
 scalar_t__ BCM590XX_REG_IS_VBUS (int) ;
 int BCM590XX_SR_VSEL_MASK ;
 int BCM590XX_VBUS_ENABLE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int bcm590xx_get_enable_register (int) ;
 int bcm590xx_get_vsel_register (int) ;
 int bcm590xx_ops_dcdc ;
 int bcm590xx_ops_ldo ;
 int bcm590xx_ops_vbus ;
 struct bcm590xx_info* bcm590xx_regs ;
 int dev_err (int ,char*,int ) ;
 struct bcm590xx* dev_get_drvdata (int ) ;
 TYPE_2__* devm_kcalloc (TYPE_1__*,int,int,int ) ;
 struct bcm590xx_reg* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,TYPE_2__*,struct regulator_config*) ;
 void* of_match_ptr (char*) ;
 int platform_set_drvdata (struct platform_device*,struct bcm590xx_reg*) ;

__attribute__((used)) static int bcm590xx_probe(struct platform_device *pdev)
{
 struct bcm590xx *bcm590xx = dev_get_drvdata(pdev->dev.parent);
 struct bcm590xx_reg *pmu;
 struct regulator_config config = { };
 struct bcm590xx_info *info;
 struct regulator_dev *rdev;
 int i;

 pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
 if (!pmu)
  return -ENOMEM;

 pmu->mfd = bcm590xx;

 platform_set_drvdata(pdev, pmu);

 pmu->desc = devm_kcalloc(&pdev->dev,
     BCM590XX_NUM_REGS,
     sizeof(struct regulator_desc),
     GFP_KERNEL);
 if (!pmu->desc)
  return -ENOMEM;

 info = bcm590xx_regs;

 for (i = 0; i < BCM590XX_NUM_REGS; i++, info++) {

  pmu->desc[i].name = info->name;
  pmu->desc[i].of_match = of_match_ptr(info->name);
  pmu->desc[i].regulators_node = of_match_ptr("regulators");
  pmu->desc[i].supply_name = info->vin_name;
  pmu->desc[i].id = i;
  pmu->desc[i].volt_table = info->volt_table;
  pmu->desc[i].n_voltages = info->n_voltages;
  pmu->desc[i].linear_ranges = info->linear_ranges;
  pmu->desc[i].n_linear_ranges = info->n_linear_ranges;

  if ((BCM590XX_REG_IS_LDO(i)) || (BCM590XX_REG_IS_GPLDO(i))) {
   pmu->desc[i].ops = &bcm590xx_ops_ldo;
   pmu->desc[i].vsel_mask = BCM590XX_LDO_VSEL_MASK;
  } else if (BCM590XX_REG_IS_VBUS(i))
   pmu->desc[i].ops = &bcm590xx_ops_vbus;
  else {
   pmu->desc[i].ops = &bcm590xx_ops_dcdc;
   pmu->desc[i].vsel_mask = BCM590XX_SR_VSEL_MASK;
  }

  if (BCM590XX_REG_IS_VBUS(i))
   pmu->desc[i].enable_mask = BCM590XX_VBUS_ENABLE;
  else {
   pmu->desc[i].vsel_reg = bcm590xx_get_vsel_register(i);
   pmu->desc[i].enable_is_inverted = 1;
   pmu->desc[i].enable_mask = BCM590XX_REG_ENABLE;
  }
  pmu->desc[i].enable_reg = bcm590xx_get_enable_register(i);
  pmu->desc[i].type = REGULATOR_VOLTAGE;
  pmu->desc[i].owner = THIS_MODULE;

  config.dev = bcm590xx->dev;
  config.driver_data = pmu;
  if (BCM590XX_REG_IS_GPLDO(i) || BCM590XX_REG_IS_VBUS(i))
   config.regmap = bcm590xx->regmap_sec;
  else
   config.regmap = bcm590xx->regmap_pri;

  rdev = devm_regulator_register(&pdev->dev, &pmu->desc[i],
            &config);
  if (IS_ERR(rdev)) {
   dev_err(bcm590xx->dev,
    "failed to register %s regulator\n",
    pdev->name);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
