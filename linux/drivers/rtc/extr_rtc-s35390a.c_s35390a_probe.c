
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s35390a {int twentyfourhour; struct i2c_client* rtc; struct i2c_client** client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int uie_unsupported; scalar_t__ addr; int adapter; struct device dev; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (struct i2c_client*) ;
 int PTR_ERR (struct i2c_client*) ;
 int RTC_AF ;
 int S35390A_CMD_STATUS2 ;
 char S35390A_FLAG_24H ;
 char S35390A_FLAG_INT2 ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,...) ;
 int device_set_wakeup_capable (struct device*,int) ;
 struct i2c_client* devm_i2c_new_dummy_device (struct device*,int ,scalar_t__) ;
 struct s35390a* devm_kzalloc (struct device*,int,int ) ;
 struct i2c_client* devm_rtc_device_register (struct device*,int ,int *,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct s35390a*) ;
 int rtc_update_irq (struct i2c_client*,int,int ) ;
 int s35390a_disable_test_mode (struct s35390a*) ;
 TYPE_2__ s35390a_driver ;
 int s35390a_read_status (struct s35390a*,char*) ;
 int s35390a_rtc_ops ;
 int s35390a_set_reg (struct s35390a*,int ,char*,int) ;

__attribute__((used)) static int s35390a_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 int err, err_read;
 unsigned int i;
 struct s35390a *s35390a;
 char buf, status1;
 struct device *dev = &client->dev;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENODEV;

 s35390a = devm_kzalloc(dev, sizeof(struct s35390a), GFP_KERNEL);
 if (!s35390a)
  return -ENOMEM;

 s35390a->client[0] = client;
 i2c_set_clientdata(client, s35390a);


 for (i = 1; i < 8; ++i) {
  s35390a->client[i] = devm_i2c_new_dummy_device(dev,
              client->adapter,
              client->addr + i);
  if (IS_ERR(s35390a->client[i])) {
   dev_err(dev, "Address %02x unavailable\n",
    client->addr + i);
   return PTR_ERR(s35390a->client[i]);
  }
 }

 err_read = s35390a_read_status(s35390a, &status1);
 if (err_read < 0) {
  dev_err(dev, "error resetting chip\n");
  return err_read;
 }

 if (status1 & S35390A_FLAG_24H)
  s35390a->twentyfourhour = 1;
 else
  s35390a->twentyfourhour = 0;

 if (status1 & S35390A_FLAG_INT2) {

  buf = 0;
  err = s35390a_set_reg(s35390a, S35390A_CMD_STATUS2, &buf, 1);
  if (err < 0) {
   dev_err(dev, "error disabling alarm");
   return err;
  }
 } else {
  err = s35390a_disable_test_mode(s35390a);
  if (err < 0) {
   dev_err(dev, "error disabling test mode\n");
   return err;
  }
 }

 device_set_wakeup_capable(dev, 1);

 s35390a->rtc = devm_rtc_device_register(dev, s35390a_driver.driver.name,
      &s35390a_rtc_ops, THIS_MODULE);

 if (IS_ERR(s35390a->rtc))
  return PTR_ERR(s35390a->rtc);


 s35390a->rtc->uie_unsupported = 1;

 if (status1 & S35390A_FLAG_INT2)
  rtc_update_irq(s35390a->rtc, 1, RTC_AF);

 return 0;
}
