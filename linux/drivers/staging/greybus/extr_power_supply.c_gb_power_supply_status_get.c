
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_power_supply {int properties_count; int last_update; TYPE_1__* props; } ;
struct gb_connection {int bundle; } ;
struct TYPE_2__ {int prop; } ;


 int __gb_power_supply_property_update (struct gb_power_supply*,int ) ;
 int gb_pm_runtime_get_sync (int ) ;
 int gb_pm_runtime_put_autosuspend (int ) ;
 struct gb_connection* get_conn_from_psy (struct gb_power_supply*) ;
 scalar_t__ is_cache_valid (struct gb_power_supply*) ;
 int jiffies ;

__attribute__((used)) static int gb_power_supply_status_get(struct gb_power_supply *gbpsy)
{
 struct gb_connection *connection = get_conn_from_psy(gbpsy);
 int ret = 0;
 int i;

 if (is_cache_valid(gbpsy))
  return 0;

 ret = gb_pm_runtime_get_sync(connection->bundle);
 if (ret)
  return ret;

 for (i = 0; i < gbpsy->properties_count; i++) {
  ret = __gb_power_supply_property_update(gbpsy,
       gbpsy->props[i].prop);
  if (ret < 0)
   break;
 }

 if (ret == 0)
  gbpsy->last_update = jiffies;

 gb_pm_runtime_put_autosuspend(connection->bundle);
 return ret;
}
