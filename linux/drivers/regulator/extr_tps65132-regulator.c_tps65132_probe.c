
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tps65132_regulator {struct device* dev; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct tps65132_regulator* driver_data; struct device* dev; struct regulator_dev* regmap; } ;
typedef struct regulator_dev regmap ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int TPS65132_MAX_REGULATORS ;
 int dev_err (struct device*,char*,int,...) ;
 struct tps65132_regulator* devm_kzalloc (struct device*,int,int ) ;
 struct regulator_dev* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 struct regulator_dev* devm_regulator_register (struct device*,TYPE_1__*,struct regulator_config*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps65132_regulator*) ;
 int tps65132_regmap_config ;
 TYPE_1__* tps_regs_desc ;

__attribute__((used)) static int tps65132_probe(struct i2c_client *client,
     const struct i2c_device_id *client_id)
{
 struct device *dev = &client->dev;
 struct tps65132_regulator *tps;
 struct regulator_dev *rdev;
 struct regmap *rmap;
 struct regulator_config config = { };
 int id;
 int ret;

 tps = devm_kzalloc(dev, sizeof(*tps), GFP_KERNEL);
 if (!tps)
  return -ENOMEM;

 rmap = devm_regmap_init_i2c(client, &tps65132_regmap_config);
 if (IS_ERR(rmap)) {
  ret = PTR_ERR(rmap);
  dev_err(dev, "regmap init failed: %d\n", ret);
  return ret;
 }

 i2c_set_clientdata(client, tps);
 tps->dev = dev;

 for (id = 0; id < TPS65132_MAX_REGULATORS; ++id) {
  config.regmap = rmap;
  config.dev = dev;
  config.driver_data = tps;

  rdev = devm_regulator_register(dev, &tps_regs_desc[id],
            &config);
  if (IS_ERR(rdev)) {
   ret = PTR_ERR(rdev);
   dev_err(dev, "regulator %s register failed: %d\n",
    tps_regs_desc[id].name, ret);
   return ret;
  }
 }
 return 0;
}
