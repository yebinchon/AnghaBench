
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct micro_battery {int temperature; int voltage; int chemistry; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int POWER_SUPPLY_TECHNOLOGY_LIPO ;
 int POWER_SUPPLY_TECHNOLOGY_NiCd ;
 int POWER_SUPPLY_TECHNOLOGY_NiMH ;
 int POWER_SUPPLY_TECHNOLOGY_UNKNOWN ;
 struct micro_battery* dev_get_drvdata (int ) ;
 int get_capacity (struct power_supply*) ;
 int get_status (struct power_supply*) ;

__attribute__((used)) static int micro_batt_get_property(struct power_supply *b,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct micro_battery *mb = dev_get_drvdata(b->dev.parent);

 switch (psp) {
 case 131:
  switch (mb->chemistry) {
  case 135:
   val->intval = POWER_SUPPLY_TECHNOLOGY_NiCd;
   break;
  case 134:
   val->intval = POWER_SUPPLY_TECHNOLOGY_NiMH;
   break;
  case 137:
   val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
   break;
  case 136:
   val->intval = POWER_SUPPLY_TECHNOLOGY_LIPO;
   break;
  default:
   val->intval = POWER_SUPPLY_TECHNOLOGY_UNKNOWN;
   break;
  };
  break;
 case 132:
  val->intval = get_status(b);
  break;
 case 129:
  val->intval = 4700000;
  break;
 case 133:
  val->intval = get_capacity(b);
  break;
 case 130:
  val->intval = mb->temperature;
  break;
 case 128:
  val->intval = mb->voltage;
  break;
 default:
  return -EINVAL;
 };

 return 0;
}
