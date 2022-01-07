
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_config {struct adp5061_state* drv_data; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct adp5061_state {int psy; int regmap; struct i2c_client* client; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adp5061_desc ;
 int adp5061_regmap_config ;
 int dev_err (int *,char*) ;
 struct adp5061_state* devm_kzalloc (int *,int,int ) ;
 int devm_power_supply_register (int *,int *,struct power_supply_config*) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct adp5061_state*) ;

__attribute__((used)) static int adp5061_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct power_supply_config psy_cfg = {};
 struct adp5061_state *st;

 st = devm_kzalloc(&client->dev, sizeof(*st), GFP_KERNEL);
 if (!st)
  return -ENOMEM;

 st->client = client;
 st->regmap = devm_regmap_init_i2c(client,
       &adp5061_regmap_config);
 if (IS_ERR(st->regmap)) {
  dev_err(&client->dev, "Failed to initialize register map\n");
  return -EINVAL;
 }

 i2c_set_clientdata(client, st);
 psy_cfg.drv_data = st;

 st->psy = devm_power_supply_register(&client->dev,
          &adp5061_desc,
          &psy_cfg);

 if (IS_ERR(st->psy)) {
  dev_err(&client->dev, "Failed to register power supply\n");
  return PTR_ERR(st->psy);
 }

 return 0;
}
