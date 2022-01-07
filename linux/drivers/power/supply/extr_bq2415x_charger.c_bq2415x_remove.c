
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ notifier_call; } ;
struct bq2415x_device {int name; int dev; int id; int notify_node; TYPE_1__ nb; } ;


 int bq2415x_id ;
 int bq2415x_id_mutex ;
 int bq2415x_power_supply_exit (struct bq2415x_device*) ;
 int bq2415x_reset_chip (struct bq2415x_device*) ;
 int dev_info (int ,char*) ;
 struct bq2415x_device* i2c_get_clientdata (struct i2c_client*) ;
 int idr_remove (int *,int ) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_node_put (int ) ;
 int power_supply_unreg_notifier (TYPE_1__*) ;

__attribute__((used)) static int bq2415x_remove(struct i2c_client *client)
{
 struct bq2415x_device *bq = i2c_get_clientdata(client);

 if (bq->nb.notifier_call)
  power_supply_unreg_notifier(&bq->nb);

 of_node_put(bq->notify_node);
 bq2415x_power_supply_exit(bq);

 bq2415x_reset_chip(bq);

 mutex_lock(&bq2415x_id_mutex);
 idr_remove(&bq2415x_id, bq->id);
 mutex_unlock(&bq2415x_id_mutex);

 dev_info(bq->dev, "driver unregistered\n");

 kfree(bq->name);

 return 0;
}
