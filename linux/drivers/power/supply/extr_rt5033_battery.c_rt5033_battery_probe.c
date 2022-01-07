
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt5033_battery {int psy; int regmap; struct i2c_client* client; } ;
struct power_supply_config {struct rt5033_battery* drv_data; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 struct rt5033_battery* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5033_battery*) ;
 int power_supply_register (int *,int *,struct power_supply_config*) ;
 int rt5033_battery_desc ;
 int rt5033_battery_regmap_config ;

__attribute__((used)) static int rt5033_battery_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct power_supply_config psy_cfg = {};
 struct rt5033_battery *battery;
 u32 ret;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE))
  return -EIO;

 battery = devm_kzalloc(&client->dev, sizeof(*battery), GFP_KERNEL);
 if (!battery)
  return -EINVAL;

 battery->client = client;
 battery->regmap = devm_regmap_init_i2c(client,
   &rt5033_battery_regmap_config);
 if (IS_ERR(battery->regmap)) {
  dev_err(&client->dev, "Failed to initialize regmap\n");
  return -EINVAL;
 }

 i2c_set_clientdata(client, battery);
 psy_cfg.drv_data = battery;

 battery->psy = power_supply_register(&client->dev,
          &rt5033_battery_desc, &psy_cfg);
 if (IS_ERR(battery->psy)) {
  dev_err(&client->dev, "Failed to register power supply\n");
  ret = PTR_ERR(battery->psy);
  return ret;
 }

 return 0;
}
