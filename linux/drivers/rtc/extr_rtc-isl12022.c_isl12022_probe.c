
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isl12022 {int rtc; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int PTR_ERR_OR_ZERO (int ) ;
 int THIS_MODULE ;
 struct isl12022* devm_kzalloc (int *,int,int ) ;
 int devm_rtc_device_register (int *,int ,int *,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct isl12022*) ;
 TYPE_2__ isl12022_driver ;
 int isl12022_rtc_ops ;

__attribute__((used)) static int isl12022_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct isl12022 *isl12022;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENODEV;

 isl12022 = devm_kzalloc(&client->dev, sizeof(struct isl12022),
    GFP_KERNEL);
 if (!isl12022)
  return -ENOMEM;

 i2c_set_clientdata(client, isl12022);

 isl12022->rtc = devm_rtc_device_register(&client->dev,
     isl12022_driver.driver.name,
     &isl12022_rtc_ops, THIS_MODULE);
 return PTR_ERR_OR_ZERO(isl12022->rtc);
}
