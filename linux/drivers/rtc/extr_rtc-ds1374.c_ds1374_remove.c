
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {scalar_t__ irq; int dev; } ;
struct ds1374 {int exiting; int work; int mutex; } ;
struct TYPE_3__ {int * parent; } ;


 int cancel_work_sync (int *) ;
 int devm_free_irq (int *,scalar_t__,struct i2c_client*) ;
 TYPE_1__ ds1374_miscdev ;
 int ds1374_wdt_notifier ;
 struct ds1374* i2c_get_clientdata (struct i2c_client*) ;
 int misc_deregister (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static int ds1374_remove(struct i2c_client *client)
{
 struct ds1374 *ds1374 = i2c_get_clientdata(client);






 if (client->irq > 0) {
  mutex_lock(&ds1374->mutex);
  ds1374->exiting = 1;
  mutex_unlock(&ds1374->mutex);

  devm_free_irq(&client->dev, client->irq, client);
  cancel_work_sync(&ds1374->work);
 }

 return 0;
}
