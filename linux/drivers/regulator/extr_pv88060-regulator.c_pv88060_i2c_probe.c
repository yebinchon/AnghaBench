
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_init_data {int dummy; } ;
struct regulator_config {void* driver_data; struct regulator_init_data* init_data; int regmap; int * dev; } ;
struct pv88060 {int * rdev; int * dev; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;
struct TYPE_2__ {int desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PV88060_MAX_REGULATORS ;
 int PV88060_M_OVER_TEMP ;
 int PV88060_M_VDD_FLT ;
 int PV88060_REG_MASK_A ;
 int PV88060_REG_MASK_B ;
 int PV88060_REG_MASK_C ;
 int dev_err (int *,char*,...) ;
 struct regulator_init_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*) ;
 struct pv88060* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_register (int *,int *,struct regulator_config*) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,char*,struct pv88060*) ;
 int i2c_set_clientdata (struct i2c_client*,struct pv88060*) ;
 int pv88060_irq_handler ;
 int pv88060_regmap_config ;
 TYPE_1__* pv88060_regulator_info ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int pv88060_i2c_probe(struct i2c_client *i2c,
  const struct i2c_device_id *id)
{
 struct regulator_init_data *init_data = dev_get_platdata(&i2c->dev);
 struct pv88060 *chip;
 struct regulator_config config = { };
 int error, i, ret = 0;

 chip = devm_kzalloc(&i2c->dev, sizeof(struct pv88060), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->dev = &i2c->dev;
 chip->regmap = devm_regmap_init_i2c(i2c, &pv88060_regmap_config);
 if (IS_ERR(chip->regmap)) {
  error = PTR_ERR(chip->regmap);
  dev_err(chip->dev, "Failed to allocate register map: %d\n",
   error);
  return error;
 }

 i2c_set_clientdata(i2c, chip);

 if (i2c->irq != 0) {
  ret = regmap_write(chip->regmap, PV88060_REG_MASK_A, 0xFF);
  if (ret < 0) {
   dev_err(chip->dev,
    "Failed to mask A reg: %d\n", ret);
   return ret;
  }

  ret = regmap_write(chip->regmap, PV88060_REG_MASK_B, 0xFF);
  if (ret < 0) {
   dev_err(chip->dev,
    "Failed to mask B reg: %d\n", ret);
   return ret;
  }

  ret = regmap_write(chip->regmap, PV88060_REG_MASK_C, 0xFF);
  if (ret < 0) {
   dev_err(chip->dev,
    "Failed to mask C reg: %d\n", ret);
   return ret;
  }

  ret = devm_request_threaded_irq(&i2c->dev, i2c->irq, ((void*)0),
     pv88060_irq_handler,
     IRQF_TRIGGER_LOW|IRQF_ONESHOT,
     "pv88060", chip);
  if (ret != 0) {
   dev_err(chip->dev, "Failed to request IRQ: %d\n",
    i2c->irq);
   return ret;
  }

  ret = regmap_update_bits(chip->regmap, PV88060_REG_MASK_A,
   PV88060_M_VDD_FLT | PV88060_M_OVER_TEMP, 0);
  if (ret < 0) {
   dev_err(chip->dev,
    "Failed to update mask reg: %d\n", ret);
   return ret;
  }

 } else {
  dev_warn(chip->dev, "No IRQ configured\n");
 }

 config.dev = chip->dev;
 config.regmap = chip->regmap;

 for (i = 0; i < PV88060_MAX_REGULATORS; i++) {
  if (init_data)
   config.init_data = &init_data[i];

  config.driver_data = (void *)&pv88060_regulator_info[i];
  chip->rdev[i] = devm_regulator_register(chip->dev,
   &pv88060_regulator_info[i].desc, &config);
  if (IS_ERR(chip->rdev[i])) {
   dev_err(chip->dev,
    "Failed to register PV88060 regulator\n");
   return PTR_ERR(chip->rdev[i]);
  }
 }

 return 0;
}
