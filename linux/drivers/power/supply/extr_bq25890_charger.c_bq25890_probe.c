
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct reg_field {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int platform_data; } ;
struct i2c_client {int irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int notifier_call; } ;
struct bq25890_device {scalar_t__ chip_id; TYPE_1__ usb_nb; int usb_phy; int usb_work; int * rmap_fields; int rmap; int lock; struct device* dev; struct i2c_client* client; } ;


 int ARRAY_SIZE (struct reg_field*) ;
 scalar_t__ BQ25890_ID ;
 int BQ25890_IRQ_PIN ;
 scalar_t__ BQ25895_ID ;
 scalar_t__ BQ25896_ID ;
 int ENODEV ;
 int ENOMEM ;
 int F_PN ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int INIT_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (int ) ;
 int USB_PHY_TYPE_USB2 ;
 scalar_t__ bq25890_field_read (struct bq25890_device*,int ) ;
 int bq25890_fw_probe (struct bq25890_device*) ;
 int bq25890_hw_init (struct bq25890_device*) ;
 int bq25890_irq_handler_thread ;
 int bq25890_irq_probe (struct bq25890_device*) ;
 int bq25890_power_supply_init (struct bq25890_device*) ;
 struct reg_field* bq25890_reg_fields ;
 int bq25890_regmap_config ;
 int bq25890_usb_notifier ;
 int bq25890_usb_work ;
 int dev_err (struct device*,char*,...) ;
 struct bq25890_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_field_alloc (struct device*,int ,struct reg_field const) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,int ,struct bq25890_device*) ;
 int devm_usb_get_phy (struct device*,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct bq25890_device*) ;
 int mutex_init (int *) ;
 int usb_register_notifier (int ,TYPE_1__*) ;
 int usb_unregister_notifier (int ,TYPE_1__*) ;

__attribute__((used)) static int bq25890_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &client->dev;
 struct bq25890_device *bq;
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

 mutex_init(&bq->lock);

 bq->rmap = devm_regmap_init_i2c(client, &bq25890_regmap_config);
 if (IS_ERR(bq->rmap)) {
  dev_err(dev, "failed to allocate register map\n");
  return PTR_ERR(bq->rmap);
 }

 for (i = 0; i < ARRAY_SIZE(bq25890_reg_fields); i++) {
  const struct reg_field *reg_fields = bq25890_reg_fields;

  bq->rmap_fields[i] = devm_regmap_field_alloc(dev, bq->rmap,
            reg_fields[i]);
  if (IS_ERR(bq->rmap_fields[i])) {
   dev_err(dev, "cannot allocate regmap field\n");
   return PTR_ERR(bq->rmap_fields[i]);
  }
 }

 i2c_set_clientdata(client, bq);

 bq->chip_id = bq25890_field_read(bq, F_PN);
 if (bq->chip_id < 0) {
  dev_err(dev, "Cannot read chip ID.\n");
  return bq->chip_id;
 }

 if ((bq->chip_id != BQ25890_ID) && (bq->chip_id != BQ25895_ID)
   && (bq->chip_id != BQ25896_ID)) {
  dev_err(dev, "Chip with ID=%d, not supported!\n", bq->chip_id);
  return -ENODEV;
 }

 if (!dev->platform_data) {
  ret = bq25890_fw_probe(bq);
  if (ret < 0) {
   dev_err(dev, "Cannot read device properties.\n");
   return ret;
  }
 } else {
  return -ENODEV;
 }

 ret = bq25890_hw_init(bq);
 if (ret < 0) {
  dev_err(dev, "Cannot initialize the chip.\n");
  return ret;
 }

 if (client->irq <= 0)
  client->irq = bq25890_irq_probe(bq);

 if (client->irq < 0) {
  dev_err(dev, "No irq resource found.\n");
  return client->irq;
 }


 bq->usb_phy = devm_usb_get_phy(dev, USB_PHY_TYPE_USB2);
 if (!IS_ERR_OR_NULL(bq->usb_phy)) {
  INIT_WORK(&bq->usb_work, bq25890_usb_work);
  bq->usb_nb.notifier_call = bq25890_usb_notifier;
  usb_register_notifier(bq->usb_phy, &bq->usb_nb);
 }

 ret = devm_request_threaded_irq(dev, client->irq, ((void*)0),
     bq25890_irq_handler_thread,
     IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
     BQ25890_IRQ_PIN, bq);
 if (ret)
  goto irq_fail;

 ret = bq25890_power_supply_init(bq);
 if (ret < 0) {
  dev_err(dev, "Failed to register power supply\n");
  goto irq_fail;
 }

 return 0;

irq_fail:
 if (!IS_ERR_OR_NULL(bq->usb_phy))
  usb_unregister_notifier(bq->usb_phy, &bq->usb_nb);

 return ret;
}
