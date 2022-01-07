
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps_pmic {int regmap; int * rdev; struct tps_driver_data* driver_data; } ;
struct tps_driver_data {int * desc; } ;
struct regulator_init_data {int dummy; } ;
struct regulator_config {struct regulator_init_data* init_data; int regmap; struct tps_pmic* driver_data; int * dev; } ;
struct i2c_device_id {int name; scalar_t__ driver_data; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TPS65023_NUM_REGULATOR ;
 int TPS65023_REG_CON_CTRL2 ;
 int TPS65023_REG_CTRL2_CORE_ADJ ;
 int dev_err (int *,char*,int) ;
 struct regulator_init_data* dev_get_platdata (int *) ;
 struct tps_pmic* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_register (int *,int *,struct regulator_config*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps_pmic*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int tps65023_regmap_config ;

__attribute__((used)) static int tps_65023_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct regulator_init_data *init_data = dev_get_platdata(&client->dev);
 struct regulator_config config = { };
 struct tps_pmic *tps;
 int i;
 int error;

 tps = devm_kzalloc(&client->dev, sizeof(*tps), GFP_KERNEL);
 if (!tps)
  return -ENOMEM;

 tps->driver_data = (struct tps_driver_data *)id->driver_data;

 tps->regmap = devm_regmap_init_i2c(client, &tps65023_regmap_config);
 if (IS_ERR(tps->regmap)) {
  error = PTR_ERR(tps->regmap);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   error);
  return error;
 }


 config.dev = &client->dev;
 config.driver_data = tps;
 config.regmap = tps->regmap;

 for (i = 0; i < TPS65023_NUM_REGULATOR; i++) {
  if (init_data)
   config.init_data = &init_data[i];


  tps->rdev[i] = devm_regulator_register(&client->dev,
     &tps->driver_data->desc[i], &config);
  if (IS_ERR(tps->rdev[i])) {
   dev_err(&client->dev, "failed to register %s\n",
    id->name);
   return PTR_ERR(tps->rdev[i]);
  }
 }

 i2c_set_clientdata(client, tps);


 regmap_update_bits(tps->regmap, TPS65023_REG_CON_CTRL2,
      TPS65023_REG_CTRL2_CORE_ADJ, 0);

 return 0;
}
