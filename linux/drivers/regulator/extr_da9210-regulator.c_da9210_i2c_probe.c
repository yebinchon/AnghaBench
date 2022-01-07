
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct regulator_config {scalar_t__ of_node; struct regulator_dev* regmap; struct da9210* driver_data; int * init_data; struct device* dev; } ;
struct of_device_id {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int irq; struct device dev; } ;
struct da9210_pdata {int da9210_constraints; } ;
struct da9210 {struct regulator_dev* regmap; struct regulator_dev* rdev; } ;


 int DA9210_M_NPWRGOOD ;
 int DA9210_M_OVCURR ;
 int DA9210_M_TEMP_CRIT ;
 int DA9210_M_TEMP_WARN ;
 int DA9210_M_VMAX ;
 int DA9210_REG_MASK_A ;
 int DA9210_REG_MASK_B ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int da9210_dt_ids ;
 int da9210_irq_handler ;
 int da9210_reg ;
 int da9210_regmap_config ;
 int dev_err (struct device*,char*,...) ;
 struct da9210_pdata* dev_get_platdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 struct da9210* devm_kzalloc (struct device*,int,int ) ;
 struct regulator_dev* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 struct regulator_dev* devm_regulator_register (struct device*,int *,struct regulator_config*) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,char*,struct da9210*) ;
 int i2c_set_clientdata (struct i2c_client*,struct da9210*) ;
 int * of_get_regulator_init_data (struct device*,scalar_t__,int *) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_match_ptr (int ) ;
 int regmap_update_bits (struct regulator_dev*,int ,int,int ) ;
 int regmap_write (struct regulator_dev*,int ,int ) ;

__attribute__((used)) static int da9210_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct da9210 *chip;
 struct device *dev = &i2c->dev;
 struct da9210_pdata *pdata = dev_get_platdata(dev);
 struct regulator_dev *rdev = ((void*)0);
 struct regulator_config config = { };
 int error;
 const struct of_device_id *match;

 if (i2c->dev.of_node && !pdata) {
  match = of_match_device(of_match_ptr(da9210_dt_ids),
      &i2c->dev);
  if (!match) {
   dev_err(&i2c->dev, "Error: No device match found\n");
   return -ENODEV;
  }
 }

 chip = devm_kzalloc(&i2c->dev, sizeof(struct da9210), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->regmap = devm_regmap_init_i2c(i2c, &da9210_regmap_config);
 if (IS_ERR(chip->regmap)) {
  error = PTR_ERR(chip->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   error);
  return error;
 }

 config.dev = &i2c->dev;
 config.init_data = pdata ? &pdata->da9210_constraints :
  of_get_regulator_init_data(dev, dev->of_node, &da9210_reg);
 config.driver_data = chip;
 config.regmap = chip->regmap;
 config.of_node = dev->of_node;


 error = regmap_write(chip->regmap, DA9210_REG_MASK_A, ~0);
 if (!error)
  error = regmap_write(chip->regmap, DA9210_REG_MASK_B, ~0);
 if (error) {
  dev_err(&i2c->dev, "Failed to write to mask reg: %d\n", error);
  return error;
 }

 rdev = devm_regulator_register(&i2c->dev, &da9210_reg, &config);
 if (IS_ERR(rdev)) {
  dev_err(&i2c->dev, "Failed to register DA9210 regulator\n");
  return PTR_ERR(rdev);
 }

 chip->rdev = rdev;
 if (i2c->irq) {
  error = devm_request_threaded_irq(&i2c->dev, i2c->irq, ((void*)0),
        da9210_irq_handler,
        IRQF_TRIGGER_LOW |
        IRQF_ONESHOT | IRQF_SHARED,
        "da9210", chip);
  if (error) {
   dev_err(&i2c->dev, "Failed to request IRQ%u: %d\n",
    i2c->irq, error);
   return error;
  }

  error = regmap_update_bits(chip->regmap, DA9210_REG_MASK_B,
      DA9210_M_OVCURR | DA9210_M_NPWRGOOD |
      DA9210_M_TEMP_WARN |
      DA9210_M_TEMP_CRIT | DA9210_M_VMAX, 0);
  if (error < 0) {
   dev_err(&i2c->dev, "Failed to update mask reg: %d\n",
    error);
   return error;
  }
 } else {
  dev_warn(&i2c->dev, "No IRQ configured\n");
 }

 i2c_set_clientdata(i2c, chip);

 return 0;
}
