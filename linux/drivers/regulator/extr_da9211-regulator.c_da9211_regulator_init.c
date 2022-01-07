
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_config {int * ena_gpiod; int of_node; int regmap; struct da9211* driver_data; int dev; int init_data; } ;
struct da9211 {int num_regulator; scalar_t__ chip_irq; int dev; int regmap; int * rdev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int num_buck; int ** gpiod_ren; int * reg_node; int * init_data; } ;


 int DA9211_M_OV_CURR_A ;
 int DA9211_REG_CONFIG_E ;
 int DA9211_REG_MASK_B ;
 unsigned int DA9211_SLAVE_SEL ;
 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int * da9211_regulators ;
 int dev_err (int ,char*,...) ;
 int devm_gpiod_unhinge (int ,int *) ;
 int devm_regulator_register (int ,int *,struct regulator_config*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static int da9211_regulator_init(struct da9211 *chip)
{
 struct regulator_config config = { };
 int i, ret;
 unsigned int data;

 ret = regmap_read(chip->regmap, DA9211_REG_CONFIG_E, &data);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to read CONFIG_E reg: %d\n", ret);
  return ret;
 }

 data &= DA9211_SLAVE_SEL;



 if (chip->pdata->num_buck == 1 && data == 0x00)
  chip->num_regulator = 1;
 else if (chip->pdata->num_buck == 2 && data != 0x00)
  chip->num_regulator = 2;
 else {
  dev_err(chip->dev, "Configuration is mismatched\n");
  return -EINVAL;
 }

 for (i = 0; i < chip->num_regulator; i++) {
  config.init_data = chip->pdata->init_data[i];
  config.dev = chip->dev;
  config.driver_data = chip;
  config.regmap = chip->regmap;
  config.of_node = chip->pdata->reg_node[i];

  if (chip->pdata->gpiod_ren[i])
   config.ena_gpiod = chip->pdata->gpiod_ren[i];
  else
   config.ena_gpiod = ((void*)0);





  if (config.ena_gpiod)
   devm_gpiod_unhinge(chip->dev, config.ena_gpiod);
  chip->rdev[i] = devm_regulator_register(chip->dev,
   &da9211_regulators[i], &config);
  if (IS_ERR(chip->rdev[i])) {
   dev_err(chip->dev,
    "Failed to register DA9211 regulator\n");
   return PTR_ERR(chip->rdev[i]);
  }

  if (chip->chip_irq != 0) {
   ret = regmap_update_bits(chip->regmap,
    DA9211_REG_MASK_B, DA9211_M_OV_CURR_A << i, 0);
   if (ret < 0) {
    dev_err(chip->dev,
     "Failed to update mask reg: %d\n", ret);
    return ret;
   }
  }
 }

 return 0;
}
