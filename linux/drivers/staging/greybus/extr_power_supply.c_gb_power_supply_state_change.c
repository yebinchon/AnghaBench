
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gb_power_supply_prop {scalar_t__ val; } ;
struct gb_power_supply {int pm_acquired; int supply_lock; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ GB_POWER_SUPPLY_STATUS_CHARGING ;
 int dev_err (int *,char*) ;
 int gb_pm_runtime_get_sync (TYPE_1__*) ;
 int gb_pm_runtime_put_autosuspend (TYPE_1__*) ;
 struct gb_connection* get_conn_from_psy (struct gb_power_supply*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gb_power_supply_state_change(struct gb_power_supply *gbpsy,
      struct gb_power_supply_prop *prop)
{
 struct gb_connection *connection = get_conn_from_psy(gbpsy);
 int ret;





 mutex_lock(&gbpsy->supply_lock);

 if ((prop->val == GB_POWER_SUPPLY_STATUS_CHARGING) &&
     !gbpsy->pm_acquired) {
  ret = gb_pm_runtime_get_sync(connection->bundle);
  if (ret)
   dev_err(&connection->bundle->dev,
    "Fail to set wake lock for charging state\n");
  else
   gbpsy->pm_acquired = 1;
 } else {
  if (gbpsy->pm_acquired) {
   ret = gb_pm_runtime_put_autosuspend(connection->bundle);
   if (ret)
    dev_err(&connection->bundle->dev,
     "Fail to set wake unlock for none charging\n");
   else
    gbpsy->pm_acquired = 0;
  }
 }

 mutex_unlock(&gbpsy->supply_lock);
}
