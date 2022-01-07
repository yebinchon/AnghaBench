
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct voltage_map_desc {int max; int min; int step; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int of_node; struct max8997_data* driver_data; int init_data; TYPE_5__* dev; } ;
struct TYPE_15__ {int parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct max8997_platform_data {int num_regulators; int buck125_default_idx; TYPE_1__* regulators; scalar_t__ buck5_gpiodvs; scalar_t__ buck2_gpiodvs; scalar_t__ buck1_gpiodvs; int * buck125_gpios; scalar_t__* buck5_voltage; scalar_t__* buck2_voltage; scalar_t__* buck1_voltage; int ignore_gpiodvs_side_effect; } ;
struct max8997_dev {struct i2c_client* i2c; TYPE_2__* dev; struct max8997_platform_data* pdata; } ;
struct max8997_data {int num_regulators; int buck125_gpioindex; int* buck1_vol; int* buck2_vol; int* buck5_vol; int ramp_delay; TYPE_5__* dev; int ignore_gpiodvs_side_effect; int buck125_gpios; scalar_t__ buck5_gpiodvs; scalar_t__ buck2_gpiodvs; scalar_t__ buck1_gpiodvs; struct max8997_dev* iodev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_14__ {scalar_t__ step; } ;
struct TYPE_13__ {int n_voltages; int volt_table; } ;
struct TYPE_12__ {scalar_t__ of_node; } ;
struct TYPE_11__ {int id; int reg_node; int initdata; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int MAX8997_CHARGER_CV ;
 int MAX8997_ESAFEOUT1 ;
 int MAX8997_ESAFEOUT2 ;
 scalar_t__ MAX8997_REG_BUCK1CTRL ;
 scalar_t__ MAX8997_REG_BUCK1DVS1 ;
 scalar_t__ MAX8997_REG_BUCK2CTRL ;
 scalar_t__ MAX8997_REG_BUCK2DVS1 ;
 scalar_t__ MAX8997_REG_BUCK5CTRL ;
 scalar_t__ MAX8997_REG_BUCK5DVS1 ;
 int MAX8997_REG_BUCKRAMP ;
 int PTR_ERR (struct regulator_dev*) ;
 TYPE_4__ buck1245_voltage_map_desc ;
 int dev_err (TYPE_5__*,char*,...) ;
 struct max8997_dev* dev_get_drvdata (int ) ;
 int devm_gpio_request (TYPE_5__*,int ,char*) ;
 struct max8997_data* devm_kzalloc (TYPE_5__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_5__*,TYPE_3__*,struct regulator_config*) ;
 int gpio_direction_output (int ,int) ;
 int gpio_is_valid (int ) ;
 int max8997_get_voltage_proper_val (TYPE_4__*,scalar_t__,scalar_t__) ;
 int max8997_pmic_dt_parse_pdata (struct platform_device*,struct max8997_platform_data*) ;
 int max8997_update_reg (struct i2c_client*,scalar_t__,int,int) ;
 int max8997_write_reg (struct i2c_client*,int ,int) ;
 int memcpy (int ,int *,int) ;
 int platform_set_drvdata (struct platform_device*,struct max8997_data*) ;
 struct voltage_map_desc** reg_voltage_map ;
 TYPE_3__* regulators ;
 int safeoutvolt ;

__attribute__((used)) static int max8997_pmic_probe(struct platform_device *pdev)
{
 struct max8997_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 struct max8997_platform_data *pdata = iodev->pdata;
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 struct max8997_data *max8997;
 struct i2c_client *i2c;
 int i, ret, nr_dvs;
 u8 max_buck1 = 0, max_buck2 = 0, max_buck5 = 0;

 if (!pdata) {
  dev_err(&pdev->dev, "No platform init data supplied.\n");
  return -ENODEV;
 }

 if (iodev->dev->of_node) {
  ret = max8997_pmic_dt_parse_pdata(pdev, pdata);
  if (ret)
   return ret;
 }

 max8997 = devm_kzalloc(&pdev->dev, sizeof(struct max8997_data),
          GFP_KERNEL);
 if (!max8997)
  return -ENOMEM;

 max8997->dev = &pdev->dev;
 max8997->iodev = iodev;
 max8997->num_regulators = pdata->num_regulators;
 platform_set_drvdata(pdev, max8997);
 i2c = max8997->iodev->i2c;

 max8997->buck125_gpioindex = pdata->buck125_default_idx;
 max8997->buck1_gpiodvs = pdata->buck1_gpiodvs;
 max8997->buck2_gpiodvs = pdata->buck2_gpiodvs;
 max8997->buck5_gpiodvs = pdata->buck5_gpiodvs;
 memcpy(max8997->buck125_gpios, pdata->buck125_gpios, sizeof(int) * 3);
 max8997->ignore_gpiodvs_side_effect = pdata->ignore_gpiodvs_side_effect;

 nr_dvs = (pdata->buck1_gpiodvs || pdata->buck2_gpiodvs ||
   pdata->buck5_gpiodvs) ? 8 : 1;

 for (i = 0; i < nr_dvs; i++) {
  max8997->buck1_vol[i] = ret =
   max8997_get_voltage_proper_val(
     &buck1245_voltage_map_desc,
     pdata->buck1_voltage[i],
     pdata->buck1_voltage[i] +
     buck1245_voltage_map_desc.step);
  if (ret < 0)
   return ret;

  max8997->buck2_vol[i] = ret =
   max8997_get_voltage_proper_val(
     &buck1245_voltage_map_desc,
     pdata->buck2_voltage[i],
     pdata->buck2_voltage[i] +
     buck1245_voltage_map_desc.step);
  if (ret < 0)
   return ret;

  max8997->buck5_vol[i] = ret =
   max8997_get_voltage_proper_val(
     &buck1245_voltage_map_desc,
     pdata->buck5_voltage[i],
     pdata->buck5_voltage[i] +
     buck1245_voltage_map_desc.step);
  if (ret < 0)
   return ret;

  if (max_buck1 < max8997->buck1_vol[i])
   max_buck1 = max8997->buck1_vol[i];
  if (max_buck2 < max8997->buck2_vol[i])
   max_buck2 = max8997->buck2_vol[i];
  if (max_buck5 < max8997->buck5_vol[i])
   max_buck5 = max8997->buck5_vol[i];
 }


 for (i = 0; i < 8; i++) {
  max8997_update_reg(i2c, MAX8997_REG_BUCK1DVS1 + i,
    max_buck1, 0x3f);
  max8997_update_reg(i2c, MAX8997_REG_BUCK2DVS1 + i,
    max_buck2, 0x3f);
  max8997_update_reg(i2c, MAX8997_REG_BUCK5DVS1 + i,
    max_buck5, 0x3f);
 }


 for (i = 0; i < nr_dvs; i++) {
  max8997_update_reg(i2c, MAX8997_REG_BUCK1DVS1 + i,
    max8997->buck1_vol[i],
    0x3f);
  max8997_update_reg(i2c, MAX8997_REG_BUCK2DVS1 + i,
    max8997->buck2_vol[i],
    0x3f);
  max8997_update_reg(i2c, MAX8997_REG_BUCK5DVS1 + i,
    max8997->buck5_vol[i],
    0x3f);
 }





 if (pdata->buck1_gpiodvs || pdata->buck2_gpiodvs ||
   pdata->buck5_gpiodvs) {

  if (!gpio_is_valid(pdata->buck125_gpios[0]) ||
    !gpio_is_valid(pdata->buck125_gpios[1]) ||
    !gpio_is_valid(pdata->buck125_gpios[2])) {
   dev_err(&pdev->dev, "GPIO NOT VALID\n");
   return -EINVAL;
  }

  ret = devm_gpio_request(&pdev->dev, pdata->buck125_gpios[0],
     "MAX8997 SET1");
  if (ret)
   return ret;

  ret = devm_gpio_request(&pdev->dev, pdata->buck125_gpios[1],
     "MAX8997 SET2");
  if (ret)
   return ret;

  ret = devm_gpio_request(&pdev->dev, pdata->buck125_gpios[2],
    "MAX8997 SET3");
  if (ret)
   return ret;

  gpio_direction_output(pdata->buck125_gpios[0],
    (max8997->buck125_gpioindex >> 2)
    & 0x1);
  gpio_direction_output(pdata->buck125_gpios[1],
    (max8997->buck125_gpioindex >> 1)
    & 0x1);
  gpio_direction_output(pdata->buck125_gpios[2],
    (max8997->buck125_gpioindex >> 0)
    & 0x1);
 }


 max8997_update_reg(i2c, MAX8997_REG_BUCK1CTRL, (pdata->buck1_gpiodvs) ?
   (1 << 1) : (0 << 1), 1 << 1);
 max8997_update_reg(i2c, MAX8997_REG_BUCK2CTRL, (pdata->buck2_gpiodvs) ?
   (1 << 1) : (0 << 1), 1 << 1);
 max8997_update_reg(i2c, MAX8997_REG_BUCK5CTRL, (pdata->buck5_gpiodvs) ?
   (1 << 1) : (0 << 1), 1 << 1);


 max8997->ramp_delay = 10;
 max8997_write_reg(i2c, MAX8997_REG_BUCKRAMP, (0xf << 4) | 0x9);

 for (i = 0; i < pdata->num_regulators; i++) {
  const struct voltage_map_desc *desc;
  int id = pdata->regulators[i].id;

  desc = reg_voltage_map[id];
  if (desc) {
   regulators[id].n_voltages =
    (desc->max - desc->min) / desc->step + 1;
  } else if (id == MAX8997_ESAFEOUT1 || id == MAX8997_ESAFEOUT2) {
   regulators[id].volt_table = safeoutvolt;
   regulators[id].n_voltages = ARRAY_SIZE(safeoutvolt);
  } else if (id == MAX8997_CHARGER_CV) {
   regulators[id].n_voltages = 16;
  }

  config.dev = max8997->dev;
  config.init_data = pdata->regulators[i].initdata;
  config.driver_data = max8997;
  config.of_node = pdata->regulators[i].reg_node;

  rdev = devm_regulator_register(&pdev->dev, &regulators[id],
            &config);
  if (IS_ERR(rdev)) {
   dev_err(max8997->dev, "regulator init failed for %d\n",
     id);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
