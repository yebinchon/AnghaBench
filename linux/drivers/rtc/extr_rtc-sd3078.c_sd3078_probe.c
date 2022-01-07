
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sd3078 {TYPE_1__* rtc; TYPE_1__* regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct TYPE_6__ {int range_max; int range_min; int * ops; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int RTC_TIMESTAMP_END_2099 ;
 int dev_err (int *,char*) ;
 struct sd3078* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct sd3078*) ;
 int regmap_config ;
 int rtc_register_device (TYPE_1__*) ;
 int sd3078_enable_reg_write (struct sd3078*) ;
 int sd3078_rtc_ops ;

__attribute__((used)) static int sd3078_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret;
 struct sd3078 *sd3078;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENODEV;

 sd3078 = devm_kzalloc(&client->dev, sizeof(*sd3078), GFP_KERNEL);
 if (!sd3078)
  return -ENOMEM;

 sd3078->regmap = devm_regmap_init_i2c(client, &regmap_config);
 if (IS_ERR(sd3078->regmap)) {
  dev_err(&client->dev, "regmap allocation failed\n");
  return PTR_ERR(sd3078->regmap);
 }

 i2c_set_clientdata(client, sd3078);

 sd3078->rtc = devm_rtc_allocate_device(&client->dev);
 if (IS_ERR(sd3078->rtc))
  return PTR_ERR(sd3078->rtc);

 sd3078->rtc->ops = &sd3078_rtc_ops;
 sd3078->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
 sd3078->rtc->range_max = RTC_TIMESTAMP_END_2099;

 ret = rtc_register_device(sd3078->rtc);
 if (ret)
  return ret;

 sd3078_enable_reg_write(sd3078);

 return 0;
}
