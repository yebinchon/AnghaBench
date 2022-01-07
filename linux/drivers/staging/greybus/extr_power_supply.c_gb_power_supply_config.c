
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int id; struct gb_power_supplies* supplies; } ;
struct gb_power_supplies {struct gb_power_supply* supply; } ;


 int gb_power_supply_description_get (struct gb_power_supply*) ;
 int gb_power_supply_prop_descriptors_get (struct gb_power_supply*) ;

__attribute__((used)) static int gb_power_supply_config(struct gb_power_supplies *supplies, int id)
{
 struct gb_power_supply *gbpsy = &supplies->supply[id];
 int ret;

 gbpsy->supplies = supplies;
 gbpsy->id = id;

 ret = gb_power_supply_description_get(gbpsy);
 if (ret < 0)
  return ret;

 return gb_power_supply_prop_descriptors_get(gbpsy);
}
