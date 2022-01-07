
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_device {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int ENODEV ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int THIS_MODULE ;
 struct rtc_device* devm_rtc_device_register (int *,int ,int *,int ) ;
 TYPE_2__ em3027_driver ;
 int em3027_rtc_ops ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rtc_device*) ;

__attribute__((used)) static int em3027_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct rtc_device *rtc;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENODEV;

 rtc = devm_rtc_device_register(&client->dev, em3027_driver.driver.name,
      &em3027_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 i2c_set_clientdata(client, rtc);

 return 0;
}
