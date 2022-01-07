
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {struct regulator_dev* regmap; struct max8649_regulator_info* driver_data; int init_data; int * dev; } ;
struct max8649_regulator_info {int mode; int extclk_freq; int ramp_timing; int * dev; struct regulator_dev* regmap; scalar_t__ ramp_down; scalar_t__ extclk; } ;
struct max8649_platform_data {int mode; int extclk_freq; int ramp_timing; int regulator; scalar_t__ ramp_down; scalar_t__ extclk; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_3__ {int name; int vsel_reg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int MAX8649_CHIP_ID1 ;
 int MAX8649_CONTROL ;
 int MAX8649_EXT_MASK ;
 int MAX8649_MODE0 ;
 int MAX8649_MODE1 ;
 int MAX8649_MODE2 ;
 int MAX8649_MODE3 ;
 int MAX8649_RAMP ;
 int MAX8649_RAMP_DOWN ;
 int MAX8649_RAMP_MASK ;
 int MAX8649_SYNC ;
 int MAX8649_SYNC_EXTCLK ;
 int MAX8649_VID_MASK ;
 int PTR_ERR (struct regulator_dev*) ;
 TYPE_1__ dcdc_desc ;
 int dev_err (int *,char*,int) ;
 struct max8649_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,unsigned int) ;
 struct max8649_regulator_info* devm_kzalloc (int *,int,int ) ;
 struct regulator_dev* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 struct regulator_dev* devm_regulator_register (int *,TYPE_1__*,struct regulator_config*) ;
 int i2c_set_clientdata (struct i2c_client*,struct max8649_regulator_info*) ;
 int max8649_regmap_config ;
 int regmap_read (struct regulator_dev*,int ,unsigned int*) ;
 int regmap_update_bits (struct regulator_dev*,int ,int,int) ;

__attribute__((used)) static int max8649_regulator_probe(struct i2c_client *client,
          const struct i2c_device_id *id)
{
 struct max8649_platform_data *pdata = dev_get_platdata(&client->dev);
 struct max8649_regulator_info *info = ((void*)0);
 struct regulator_dev *regulator;
 struct regulator_config config = { };
 unsigned int val;
 unsigned char data;
 int ret;

 info = devm_kzalloc(&client->dev, sizeof(struct max8649_regulator_info),
       GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->regmap = devm_regmap_init_i2c(client, &max8649_regmap_config);
 if (IS_ERR(info->regmap)) {
  ret = PTR_ERR(info->regmap);
  dev_err(&client->dev, "Failed to allocate register map: %d\n", ret);
  return ret;
 }

 info->dev = &client->dev;
 i2c_set_clientdata(client, info);

 info->mode = pdata->mode;
 switch (info->mode) {
 case 0:
  dcdc_desc.vsel_reg = MAX8649_MODE0;
  break;
 case 1:
  dcdc_desc.vsel_reg = MAX8649_MODE1;
  break;
 case 2:
  dcdc_desc.vsel_reg = MAX8649_MODE2;
  break;
 case 3:
  dcdc_desc.vsel_reg = MAX8649_MODE3;
  break;
 default:
  break;
 }

 ret = regmap_read(info->regmap, MAX8649_CHIP_ID1, &val);
 if (ret != 0) {
  dev_err(info->dev, "Failed to detect ID of MAX8649:%d\n",
   ret);
  return ret;
 }
 dev_info(info->dev, "Detected MAX8649 (ID:%x)\n", val);


 regmap_update_bits(info->regmap, MAX8649_CONTROL, MAX8649_VID_MASK, 0);


 info->extclk = pdata->extclk;
 data = (info->extclk) ? MAX8649_SYNC_EXTCLK : 0;
 regmap_update_bits(info->regmap, dcdc_desc.vsel_reg,
      MAX8649_SYNC_EXTCLK, data);
 if (info->extclk) {

  info->extclk_freq = pdata->extclk_freq;
  regmap_update_bits(info->regmap, MAX8649_SYNC, MAX8649_EXT_MASK,
       info->extclk_freq << 6);
 }

 if (pdata->ramp_timing) {
  info->ramp_timing = pdata->ramp_timing;
  regmap_update_bits(info->regmap, MAX8649_RAMP, MAX8649_RAMP_MASK,
       info->ramp_timing << 5);
 }

 info->ramp_down = pdata->ramp_down;
 if (info->ramp_down) {
  regmap_update_bits(info->regmap, MAX8649_RAMP, MAX8649_RAMP_DOWN,
       MAX8649_RAMP_DOWN);
 }

 config.dev = &client->dev;
 config.init_data = pdata->regulator;
 config.driver_data = info;
 config.regmap = info->regmap;

 regulator = devm_regulator_register(&client->dev, &dcdc_desc,
        &config);
 if (IS_ERR(regulator)) {
  dev_err(info->dev, "failed to register regulator %s\n",
   dcdc_desc.name);
  return PTR_ERR(regulator);
 }

 return 0;
}
