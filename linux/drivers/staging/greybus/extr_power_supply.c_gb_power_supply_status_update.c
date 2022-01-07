
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int changed; int update_interval; } ;


 int __gb_power_supply_changed (struct gb_power_supply*) ;
 int gb_power_supply_status_get (struct gb_power_supply*) ;
 int update_interval_init ;

__attribute__((used)) static void gb_power_supply_status_update(struct gb_power_supply *gbpsy)
{

 gb_power_supply_status_get(gbpsy);

 if (!gbpsy->changed)
  return;

 gbpsy->update_interval = update_interval_init;
 __gb_power_supply_changed(gbpsy);
 gbpsy->changed = 0;
}
