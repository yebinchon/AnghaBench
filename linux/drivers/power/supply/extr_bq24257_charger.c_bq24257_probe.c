
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reg_field {int dummy; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int platform_data; TYPE_1__* driver; } ;
struct i2c_client {int irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct bq24257_device {int chip; int iilimit_autoset_enable; struct device* dev; int pg; int iilimit_setup_work; int * rmap_fields; int rmap; int lock; struct i2c_client* client; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
typedef enum bq2425x_chip { ____Placeholder_bq2425x_chip } bq2425x_chip ;
struct TYPE_2__ {int acpi_match_table; } ;


 scalar_t__ ACPI_HANDLE (struct device*) ;
 int ARRAY_SIZE (struct reg_field*) ;
 scalar_t__ BQ24250 ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int F_RESET ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct acpi_device_id* acpi_match_device (int ,struct device*) ;
 int bq24257_field_write (struct bq24257_device*,int ,int) ;
 int bq24257_fw_probe (struct bq24257_device*) ;
 int bq24257_hw_init (struct bq24257_device*) ;
 int bq24257_iilimit_setup_work ;
 int bq24257_irq_handler_thread ;
 int bq24257_pg_gpio_probe (struct bq24257_device*) ;
 int bq24257_power_supply_init (struct bq24257_device*) ;
 struct reg_field* bq24257_reg_fields ;
 int bq24257_regmap_config ;
 int * bq2425x_chip_name ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 struct bq24257_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_field_alloc (struct device*,int ,struct reg_field const) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,int ,struct bq24257_device*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct bq24257_device*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int bq24257_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &client->dev;
 const struct acpi_device_id *acpi_id;
 struct bq24257_device *bq;
 int ret;
 int i;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_err(dev, "No support for SMBUS_BYTE_DATA\n");
  return -ENODEV;
 }

 bq = devm_kzalloc(dev, sizeof(*bq), GFP_KERNEL);
 if (!bq)
  return -ENOMEM;

 bq->client = client;
 bq->dev = dev;

 if (ACPI_HANDLE(dev)) {
  acpi_id = acpi_match_device(dev->driver->acpi_match_table,
         &client->dev);
  if (!acpi_id) {
   dev_err(dev, "Failed to match ACPI device\n");
   return -ENODEV;
  }
  bq->chip = (enum bq2425x_chip)acpi_id->driver_data;
 } else {
  bq->chip = (enum bq2425x_chip)id->driver_data;
 }

 mutex_init(&bq->lock);

 bq->rmap = devm_regmap_init_i2c(client, &bq24257_regmap_config);
 if (IS_ERR(bq->rmap)) {
  dev_err(dev, "failed to allocate register map\n");
  return PTR_ERR(bq->rmap);
 }

 for (i = 0; i < ARRAY_SIZE(bq24257_reg_fields); i++) {
  const struct reg_field *reg_fields = bq24257_reg_fields;

  bq->rmap_fields[i] = devm_regmap_field_alloc(dev, bq->rmap,
            reg_fields[i]);
  if (IS_ERR(bq->rmap_fields[i])) {
   dev_err(dev, "cannot allocate regmap field\n");
   return PTR_ERR(bq->rmap_fields[i]);
  }
 }

 i2c_set_clientdata(client, bq);

 if (!dev->platform_data) {
  ret = bq24257_fw_probe(bq);
  if (ret < 0) {
   dev_err(dev, "Cannot read device properties.\n");
   return ret;
  }
 } else {
  return -ENODEV;
 }






 if (bq->chip == BQ24250)
  bq->iilimit_autoset_enable = 0;

 if (bq->iilimit_autoset_enable)
  INIT_DELAYED_WORK(&bq->iilimit_setup_work,
      bq24257_iilimit_setup_work);







 if (bq->chip != BQ24250)
  bq24257_pg_gpio_probe(bq);

 if (PTR_ERR(bq->pg) == -EPROBE_DEFER)
  return PTR_ERR(bq->pg);
 else if (!bq->pg)
  dev_info(bq->dev, "using SW-based power-good detection\n");


 ret = bq24257_field_write(bq, F_RESET, 1);
 if (ret < 0)
  return ret;






 ret = bq24257_field_write(bq, F_RESET, 0);
 if (ret < 0)
  return ret;

 ret = bq24257_hw_init(bq);
 if (ret < 0) {
  dev_err(dev, "Cannot initialize the chip.\n");
  return ret;
 }

 ret = bq24257_power_supply_init(bq);
 if (ret < 0) {
  dev_err(dev, "Failed to register power supply\n");
  return ret;
 }

 ret = devm_request_threaded_irq(dev, client->irq, ((void*)0),
     bq24257_irq_handler_thread,
     IRQF_TRIGGER_FALLING |
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     bq2425x_chip_name[bq->chip], bq);
 if (ret) {
  dev_err(dev, "Failed to request IRQ #%d\n", client->irq);
  return ret;
 }

 return 0;
}
