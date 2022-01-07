
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int strval; } ;
struct gb_power_supply {int serial_number; int manufacturer; int model_name; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;






__attribute__((used)) static int __gb_power_supply_property_strval_get(struct gb_power_supply *gbpsy,
      enum power_supply_property psp,
      union power_supply_propval *val)
{
 switch (psp) {
 case 129:
  val->strval = gbpsy->model_name;
  break;
 case 130:
  val->strval = gbpsy->manufacturer;
  break;
 case 128:
  val->strval = gbpsy->serial_number;
  break;
 default:
  break;
 }

 return 0;
}
