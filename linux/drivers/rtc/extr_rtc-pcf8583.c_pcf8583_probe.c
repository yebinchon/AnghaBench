
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcf8583 {int rtc; } ;
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
 struct pcf8583* devm_kzalloc (int *,int,int ) ;
 int devm_rtc_device_register (int *,int ,int *,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct pcf8583*) ;
 TYPE_2__ pcf8583_driver ;
 int pcf8583_rtc_ops ;

__attribute__((used)) static int pcf8583_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct pcf8583 *pcf8583;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENODEV;

 pcf8583 = devm_kzalloc(&client->dev, sizeof(struct pcf8583),
    GFP_KERNEL);
 if (!pcf8583)
  return -ENOMEM;

 i2c_set_clientdata(client, pcf8583);

 pcf8583->rtc = devm_rtc_device_register(&client->dev,
    pcf8583_driver.driver.name,
    &pcf8583_rtc_ops, THIS_MODULE);

 return PTR_ERR_OR_ZERO(pcf8583->rtc);
}
