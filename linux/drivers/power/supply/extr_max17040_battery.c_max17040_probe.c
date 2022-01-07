
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct power_supply_config {struct max17040_chip* drv_data; } ;
struct max17040_chip {int work; int battery; int pdata; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int platform_data; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MAX17040_DELAY ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 struct max17040_chip* devm_kzalloc (TYPE_1__*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct max17040_chip*) ;
 int max17040_battery_desc ;
 int max17040_get_version (struct i2c_client*) ;
 int max17040_reset (struct i2c_client*) ;
 int max17040_work ;
 int power_supply_register (TYPE_1__*,int *,struct power_supply_config*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int max17040_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct power_supply_config psy_cfg = {};
 struct max17040_chip *chip;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE))
  return -EIO;

 chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->client = client;
 chip->pdata = client->dev.platform_data;

 i2c_set_clientdata(client, chip);
 psy_cfg.drv_data = chip;

 chip->battery = power_supply_register(&client->dev,
    &max17040_battery_desc, &psy_cfg);
 if (IS_ERR(chip->battery)) {
  dev_err(&client->dev, "failed: power supply register\n");
  return PTR_ERR(chip->battery);
 }

 max17040_reset(client);
 max17040_get_version(client);

 INIT_DEFERRABLE_WORK(&chip->work, max17040_work);
 queue_delayed_work(system_power_efficient_wq, &chip->work,
      MAX17040_DELAY);

 return 0;
}
