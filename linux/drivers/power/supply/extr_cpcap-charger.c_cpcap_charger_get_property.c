
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct cpcap_charger_ddata {int status; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;




 int POWER_SUPPLY_STATUS_CHARGING ;
 int cpcap_charger_get_charge_current (struct cpcap_charger_ddata*) ;
 int cpcap_charger_get_charge_voltage (struct cpcap_charger_ddata*) ;
 struct cpcap_charger_ddata* dev_get_drvdata (int ) ;

__attribute__((used)) static int cpcap_charger_get_property(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 struct cpcap_charger_ddata *ddata = dev_get_drvdata(psy->dev.parent);

 switch (psp) {
 case 129:
  val->intval = ddata->status;
  break;
 case 128:
  if (ddata->status == POWER_SUPPLY_STATUS_CHARGING)
   val->intval = cpcap_charger_get_charge_voltage(ddata) *
    1000;
  else
   val->intval = 0;
  break;
 case 131:
  if (ddata->status == POWER_SUPPLY_STATUS_CHARGING)
   val->intval = cpcap_charger_get_charge_current(ddata) *
    1000;
  else
   val->intval = 0;
  break;
 case 130:
  val->intval = ddata->status == POWER_SUPPLY_STATUS_CHARGING;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
