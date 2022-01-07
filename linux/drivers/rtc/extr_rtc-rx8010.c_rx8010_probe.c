
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rx8010_data {TYPE_2__* rtc; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; int name; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dev; } ;
struct TYPE_7__ {int max_user_freq; } ;
struct TYPE_6__ {int alarm_irq_enable; int set_alarm; int read_alarm; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__) ;
 struct rx8010_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct i2c_client*) ;
 TYPE_2__* devm_rtc_device_register (int *,int ,TYPE_1__*,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct rx8010_data*) ;
 int rx8010_alarm_irq_enable ;
 int rx8010_init_client (struct i2c_client*) ;
 int rx8010_irq_1_handler ;
 int rx8010_read_alarm ;
 TYPE_1__ rx8010_rtc_ops ;
 int rx8010_set_alarm ;

__attribute__((used)) static int rx8010_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct rx8010_data *rx8010;
 int err = 0;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA
  | I2C_FUNC_SMBUS_I2C_BLOCK)) {
  dev_err(&adapter->dev, "doesn't support required functionality\n");
  return -EIO;
 }

 rx8010 = devm_kzalloc(&client->dev, sizeof(struct rx8010_data),
         GFP_KERNEL);
 if (!rx8010)
  return -ENOMEM;

 rx8010->client = client;
 i2c_set_clientdata(client, rx8010);

 err = rx8010_init_client(client);
 if (err)
  return err;

 if (client->irq > 0) {
  dev_info(&client->dev, "IRQ %d supplied\n", client->irq);
  err = devm_request_threaded_irq(&client->dev, client->irq, ((void*)0),
      rx8010_irq_1_handler,
      IRQF_TRIGGER_LOW | IRQF_ONESHOT,
      "rx8010", client);

  if (err) {
   dev_err(&client->dev, "unable to request IRQ\n");
   client->irq = 0;
  } else {
   rx8010_rtc_ops.read_alarm = rx8010_read_alarm;
   rx8010_rtc_ops.set_alarm = rx8010_set_alarm;
   rx8010_rtc_ops.alarm_irq_enable = rx8010_alarm_irq_enable;
  }
 }

 rx8010->rtc = devm_rtc_device_register(&client->dev, client->name,
  &rx8010_rtc_ops, THIS_MODULE);

 if (IS_ERR(rx8010->rtc)) {
  dev_err(&client->dev, "unable to register the class device\n");
  return PTR_ERR(rx8010->rtc);
 }

 rx8010->rtc->max_user_freq = 1;

 return err;
}
