
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rx8025_data {TYPE_1__* rtc; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; int name; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dev; } ;
struct TYPE_4__ {int max_user_freq; int uie_unsupported; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__) ;
 struct rx8025_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int ,char*,struct i2c_client*) ;
 TYPE_1__* devm_rtc_device_register (int *,int ,int *,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct rx8025_data*) ;
 int rx8025_handle_irq ;
 int rx8025_init_client (struct i2c_client*) ;
 int rx8025_rtc_ops ;
 int rx8025_sysfs_register (int *) ;

__attribute__((used)) static int rx8025_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct rx8025_data *rx8025;
 int err = 0;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA
         | I2C_FUNC_SMBUS_I2C_BLOCK)) {
  dev_err(&adapter->dev,
   "doesn't support required functionality\n");
  return -EIO;
 }

 rx8025 = devm_kzalloc(&client->dev, sizeof(*rx8025), GFP_KERNEL);
 if (!rx8025)
  return -ENOMEM;

 rx8025->client = client;
 i2c_set_clientdata(client, rx8025);

 err = rx8025_init_client(client);
 if (err)
  return err;

 rx8025->rtc = devm_rtc_device_register(&client->dev, client->name,
       &rx8025_rtc_ops, THIS_MODULE);
 if (IS_ERR(rx8025->rtc)) {
  dev_err(&client->dev, "unable to register the class device\n");
  return PTR_ERR(rx8025->rtc);
 }

 if (client->irq > 0) {
  dev_info(&client->dev, "IRQ %d supplied\n", client->irq);
  err = devm_request_threaded_irq(&client->dev, client->irq, ((void*)0),
      rx8025_handle_irq,
      IRQF_ONESHOT,
      "rx8025", client);
  if (err) {
   dev_err(&client->dev, "unable to request IRQ, alarms disabled\n");
   client->irq = 0;
  }
 }

 rx8025->rtc->max_user_freq = 1;


 rx8025->rtc->uie_unsupported = 1;

 err = rx8025_sysfs_register(&client->dev);
 return err;
}
