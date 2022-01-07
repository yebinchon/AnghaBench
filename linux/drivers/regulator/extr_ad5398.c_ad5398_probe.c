
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_init_data {int dummy; } ;
struct regulator_config {struct ad5398_chip_info* driver_data; struct regulator_init_data* init_data; int * dev; } ;
struct i2c_device_id {int name; scalar_t__ driver_data; } ;
struct i2c_client {int dev; } ;
struct ad5398_current_data_format {int current_bits; int current_offset; int max_uA; int min_uA; } ;
struct ad5398_chip_info {int current_level; int current_offset; int current_mask; int rdev; int max_uA; int min_uA; struct i2c_client* client; } ;
struct TYPE_3__ {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_1__ ad5398_reg ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int ,int ) ;
 struct regulator_init_data* dev_get_platdata (int *) ;
 struct ad5398_chip_info* devm_kzalloc (int *,int,int ) ;
 int devm_regulator_register (int *,TYPE_1__*,struct regulator_config*) ;
 int i2c_set_clientdata (struct i2c_client*,struct ad5398_chip_info*) ;

__attribute__((used)) static int ad5398_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct regulator_init_data *init_data = dev_get_platdata(&client->dev);
 struct regulator_config config = { };
 struct ad5398_chip_info *chip;
 const struct ad5398_current_data_format *df =
   (struct ad5398_current_data_format *)id->driver_data;

 if (!init_data)
  return -EINVAL;

 chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 config.dev = &client->dev;
 config.init_data = init_data;
 config.driver_data = chip;

 chip->client = client;

 chip->min_uA = df->min_uA;
 chip->max_uA = df->max_uA;
 chip->current_level = 1 << df->current_bits;
 chip->current_offset = df->current_offset;
 chip->current_mask = (chip->current_level - 1) << chip->current_offset;

 chip->rdev = devm_regulator_register(&client->dev, &ad5398_reg,
          &config);
 if (IS_ERR(chip->rdev)) {
  dev_err(&client->dev, "failed to register %s %s\n",
   id->name, ad5398_reg.name);
  return PTR_ERR(chip->rdev);
 }

 i2c_set_clientdata(client, chip);
 dev_dbg(&client->dev, "%s regulator driver is registered.\n", id->name);
 return 0;
}
