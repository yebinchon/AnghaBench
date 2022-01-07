
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct power_supply {int dummy; } ;
struct gb_power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int _gb_power_supply_property_get (struct gb_power_supply*,int,union power_supply_propval*) ;
 int gb_power_supply_status_get (struct gb_power_supply*) ;
 struct gb_power_supply* to_gb_power_supply (struct power_supply*) ;

__attribute__((used)) static int get_property(struct power_supply *b,
   enum power_supply_property psp,
   union power_supply_propval *val)
{
 struct gb_power_supply *gbpsy = to_gb_power_supply(b);

 gb_power_supply_status_get(gbpsy);

 return _gb_power_supply_property_get(gbpsy, psp, val);
}
