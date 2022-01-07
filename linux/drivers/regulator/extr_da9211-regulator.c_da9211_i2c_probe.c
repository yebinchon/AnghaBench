
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {scalar_t__ platform_data; } ;
struct i2c_client {int irq; TYPE_1__ dev; } ;
struct da9211 {int chip_irq; TYPE_1__* dev; scalar_t__ pdata; int chip_id; scalar_t__ regmap; } ;


 int DA9211 ;

 int DA9211_REG_DEVICE_ID ;
 int DA9213 ;

 int DA9215 ;

 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int da9211_irq_handler ;
 scalar_t__ da9211_parse_regulators_dt (TYPE_1__*) ;
 int da9211_regmap_config ;
 int da9211_regulator_init (struct da9211*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_warn (TYPE_1__*,char*) ;
 struct da9211* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int,char*,struct da9211*) ;
 int i2c_set_clientdata (struct i2c_client*,struct da9211*) ;
 int regmap_read (scalar_t__,int ,unsigned int*) ;

__attribute__((used)) static int da9211_i2c_probe(struct i2c_client *i2c,
  const struct i2c_device_id *id)
{
 struct da9211 *chip;
 int error, ret;
 unsigned int data;

 chip = devm_kzalloc(&i2c->dev, sizeof(struct da9211), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->dev = &i2c->dev;
 chip->regmap = devm_regmap_init_i2c(i2c, &da9211_regmap_config);
 if (IS_ERR(chip->regmap)) {
  error = PTR_ERR(chip->regmap);
  dev_err(chip->dev, "Failed to allocate register map: %d\n",
   error);
  return error;
 }

 i2c_set_clientdata(i2c, chip);

 chip->pdata = i2c->dev.platform_data;

 ret = regmap_read(chip->regmap, DA9211_REG_DEVICE_ID, &data);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to read DEVICE_ID reg: %d\n", ret);
  return ret;
 }

 switch (data) {
 case 130:
  chip->chip_id = DA9211;
  break;
 case 129:
  chip->chip_id = DA9213;
  break;
 case 128:
  chip->chip_id = DA9215;
  break;
 default:
  dev_err(chip->dev, "Unsupported device id = 0x%x.\n", data);
  return -ENODEV;
 }

 if (!chip->pdata)
  chip->pdata = da9211_parse_regulators_dt(chip->dev);

 if (IS_ERR(chip->pdata)) {
  dev_err(chip->dev, "No regulators defined for the platform\n");
  return PTR_ERR(chip->pdata);
 }

 chip->chip_irq = i2c->irq;

 if (chip->chip_irq != 0) {
  ret = devm_request_threaded_irq(chip->dev, chip->chip_irq, ((void*)0),
     da9211_irq_handler,
     IRQF_TRIGGER_LOW|IRQF_ONESHOT,
     "da9211", chip);
  if (ret != 0) {
   dev_err(chip->dev, "Failed to request IRQ: %d\n",
    chip->chip_irq);
   return ret;
  }
 } else {
  dev_warn(chip->dev, "No IRQ configured\n");
 }

 ret = da9211_regulator_init(chip);

 if (ret < 0)
  dev_err(chip->dev, "Failed to initialize regulator: %d\n", ret);

 return ret;
}
