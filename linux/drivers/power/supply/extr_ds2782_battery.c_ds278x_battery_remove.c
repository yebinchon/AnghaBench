
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct ds278x_info* name; } ;
struct ds278x_info {int id; TYPE_1__ battery_desc; int bat_work; int battery; } ;


 int battery_id ;
 int battery_lock ;
 int cancel_delayed_work_sync (int *) ;
 struct ds278x_info* i2c_get_clientdata (struct i2c_client*) ;
 int idr_remove (int *,int) ;
 int kfree (struct ds278x_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int ds278x_battery_remove(struct i2c_client *client)
{
 struct ds278x_info *info = i2c_get_clientdata(client);
 int id = info->id;

 power_supply_unregister(info->battery);
 cancel_delayed_work_sync(&info->bat_work);
 kfree(info->battery_desc.name);
 kfree(info);

 mutex_lock(&battery_lock);
 idr_remove(&battery_id, id);
 mutex_unlock(&battery_lock);

 return 0;
}
