
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf8523 {int rtc; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int DRIVER_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_warn (int *,char*,int) ;
 struct pcf8523* devm_kzalloc (int *,int,int ) ;
 int devm_rtc_device_register (int *,int ,int *,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct pcf8523*) ;
 int pcf8523_load_capacitance (struct i2c_client*) ;
 int pcf8523_rtc_ops ;
 int pcf8523_set_pm (struct i2c_client*,int ) ;

__attribute__((used)) static int pcf8523_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct pcf8523 *pcf;
 int err;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENODEV;

 pcf = devm_kzalloc(&client->dev, sizeof(*pcf), GFP_KERNEL);
 if (!pcf)
  return -ENOMEM;

 err = pcf8523_load_capacitance(client);
 if (err < 0)
  dev_warn(&client->dev, "failed to set xtal load capacitance: %d",
    err);

 err = pcf8523_set_pm(client, 0);
 if (err < 0)
  return err;

 pcf->rtc = devm_rtc_device_register(&client->dev, DRIVER_NAME,
           &pcf8523_rtc_ops, THIS_MODULE);
 if (IS_ERR(pcf->rtc))
  return PTR_ERR(pcf->rtc);

 i2c_set_clientdata(client, pcf);

 return 0;
}
