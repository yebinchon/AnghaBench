
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int lock; int list; int bat; int work; } ;


 int bq27xxx_list_lock ;
 int cancel_delayed_work_sync (int *) ;
 int list_del (int *) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ poll_interval ;
 int power_supply_unregister (int ) ;

void bq27xxx_battery_teardown(struct bq27xxx_device_info *di)
{






 poll_interval = 0;

 cancel_delayed_work_sync(&di->work);

 power_supply_unregister(di->bat);

 mutex_lock(&bq27xxx_list_lock);
 list_del(&di->list);
 mutex_unlock(&bq27xxx_list_lock);

 mutex_destroy(&di->lock);
}
