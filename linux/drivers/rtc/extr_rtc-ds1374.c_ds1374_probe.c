
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; int name; } ;
struct ds1374 {int rtc; int mutex; int work; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int device_set_wakeup_capable (int *,int) ;
 struct ds1374* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,char*,struct i2c_client*) ;
 int devm_rtc_device_register (int *,int ,int *,int ) ;
 int ds1374_check_rtc_status (struct i2c_client*) ;
 int ds1374_irq ;
 int ds1374_miscdev ;
 int ds1374_rtc_ops ;
 int ds1374_wdt_notifier ;
 int ds1374_wdt_settimeout (int) ;
 int ds1374_work ;
 int i2c_set_clientdata (struct i2c_client*,struct ds1374*) ;
 int misc_deregister (int *) ;
 int misc_register (int *) ;
 int mutex_init (int *) ;
 int register_reboot_notifier (int *) ;
 struct i2c_client* save_client ;

__attribute__((used)) static int ds1374_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ds1374 *ds1374;
 int ret;

 ds1374 = devm_kzalloc(&client->dev, sizeof(struct ds1374), GFP_KERNEL);
 if (!ds1374)
  return -ENOMEM;

 ds1374->client = client;
 i2c_set_clientdata(client, ds1374);

 INIT_WORK(&ds1374->work, ds1374_work);
 mutex_init(&ds1374->mutex);

 ret = ds1374_check_rtc_status(client);
 if (ret)
  return ret;

 if (client->irq > 0) {
  ret = devm_request_irq(&client->dev, client->irq, ds1374_irq, 0,
     "ds1374", client);
  if (ret) {
   dev_err(&client->dev, "unable to request IRQ\n");
   return ret;
  }

  device_set_wakeup_capable(&client->dev, 1);
 }

 ds1374->rtc = devm_rtc_device_register(&client->dev, client->name,
      &ds1374_rtc_ops, THIS_MODULE);
 if (IS_ERR(ds1374->rtc)) {
  dev_err(&client->dev, "unable to register the class device\n");
  return PTR_ERR(ds1374->rtc);
 }
 return 0;
}
