
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int of_node; } ;
struct i2c_client {struct device dev; int adapter; } ;
struct abeoz9_rtc_data {TYPE_1__* rtc; struct regmap* regmap; } ;
struct TYPE_4__ {int range_max; int range_min; int * ops; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int PTR_ERR_OR_ZERO (TYPE_1__*) ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int RTC_TIMESTAMP_END_2099 ;
 int abeoz9_hwmon_register (struct device*,struct abeoz9_rtc_data*) ;
 int abeoz9_rtc_regmap_config ;
 int abeoz9_rtc_setup (struct device*,int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct abeoz9_rtc_data*) ;
 struct abeoz9_rtc_data* devm_kzalloc (struct device*,int,int ) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 TYPE_1__* devm_rtc_allocate_device (struct device*) ;
 int i2c_check_functionality (int ,int) ;
 int rtc_ops ;
 int rtc_register_device (TYPE_1__*) ;

__attribute__((used)) static int abeoz9_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct abeoz9_rtc_data *data = ((void*)0);
 struct device *dev = &client->dev;
 struct regmap *regmap;
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C |
         I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_I2C_BLOCK))
  return -ENODEV;

 regmap = devm_regmap_init_i2c(client, &abeoz9_rtc_regmap_config);
 if (IS_ERR(regmap)) {
  ret = PTR_ERR(regmap);
  dev_err(dev, "regmap allocation failed: %d\n", ret);
  return ret;
 }

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->regmap = regmap;
 dev_set_drvdata(dev, data);

 ret = abeoz9_rtc_setup(dev, client->dev.of_node);
 if (ret)
  return ret;

 data->rtc = devm_rtc_allocate_device(dev);
 ret = PTR_ERR_OR_ZERO(data->rtc);
 if (ret)
  return ret;

 data->rtc->ops = &rtc_ops;
 data->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
 data->rtc->range_max = RTC_TIMESTAMP_END_2099;

 ret = rtc_register_device(data->rtc);
 if (ret)
  return ret;

 abeoz9_hwmon_register(dev, data);
 return 0;
}
