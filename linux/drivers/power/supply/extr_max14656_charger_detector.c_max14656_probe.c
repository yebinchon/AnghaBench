
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply_config {struct max14656_chip* drv_data; } ;
struct TYPE_2__ {int get_property; int num_properties; int properties; int type; int name; } ;
struct max14656_chip {int irq; int irq_work; int detect_psy; TYPE_1__ psy_desc; scalar_t__ online; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int MAX14656_NAME ;
 int POWER_SUPPLY_TYPE_UNKNOWN ;
 int dev_err (struct device*,char*,...) ;
 int devm_add_action (struct device*,int ,struct max14656_chip*) ;
 struct max14656_chip* devm_kzalloc (struct device*,int,int ) ;
 int devm_power_supply_register (struct device*,TYPE_1__*,struct power_supply_config*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct max14656_chip*) ;
 int enable_irq_wake (int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int max14656_battery_props ;
 int max14656_get_property ;
 int max14656_hw_init (struct max14656_chip*) ;
 int max14656_irq ;
 int max14656_irq_worker ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int stop_irq_work ;

__attribute__((used)) static int max14656_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &client->dev;
 struct power_supply_config psy_cfg = {};
 struct max14656_chip *chip;
 int irq = client->irq;
 int ret = 0;

 if (irq <= 0) {
  dev_err(dev, "invalid irq number: %d\n", irq);
  return -ENODEV;
 }

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_err(dev, "No support for SMBUS_BYTE_DATA\n");
  return -ENODEV;
 }

 chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 psy_cfg.drv_data = chip;
 chip->client = client;
 chip->online = 0;
 chip->psy_desc.name = MAX14656_NAME;
 chip->psy_desc.type = POWER_SUPPLY_TYPE_UNKNOWN;
 chip->psy_desc.properties = max14656_battery_props;
 chip->psy_desc.num_properties = ARRAY_SIZE(max14656_battery_props);
 chip->psy_desc.get_property = max14656_get_property;
 chip->irq = irq;

 ret = max14656_hw_init(chip);
 if (ret)
  return -ENODEV;

 chip->detect_psy = devm_power_supply_register(dev,
         &chip->psy_desc, &psy_cfg);
 if (IS_ERR(chip->detect_psy)) {
  dev_err(dev, "power_supply_register failed\n");
  return -EINVAL;
 }

 INIT_DELAYED_WORK(&chip->irq_work, max14656_irq_worker);
 ret = devm_add_action(dev, stop_irq_work, chip);
 if (ret) {
  dev_err(dev, "devm_add_action %d failed\n", ret);
  return ret;
 }

 ret = devm_request_irq(dev, chip->irq, max14656_irq,
          IRQF_TRIGGER_FALLING,
          MAX14656_NAME, chip);
 if (ret) {
  dev_err(dev, "request_irq %d failed\n", chip->irq);
  return -EINVAL;
 }
 enable_irq_wake(chip->irq);

 schedule_delayed_work(&chip->irq_work, msecs_to_jiffies(2000));

 return 0;
}
