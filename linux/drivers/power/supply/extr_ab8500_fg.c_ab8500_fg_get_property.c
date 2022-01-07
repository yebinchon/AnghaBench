
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct TYPE_6__ {int max_mah_design; int max_mah; int prev_mah; int prev_percent; int prev_level; } ;
struct TYPE_5__ {int batt_id_received; int batt_unknown; int bat_ovv; } ;
struct ab8500_fg {int vbat; int inst_curr; int avg_curr; TYPE_3__ bat_cap; TYPE_2__ flags; TYPE_1__* bm; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_4__ {int chg_unknown_bat; } ;


 int BATT_OVV_VALUE ;
 int EINVAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN ;
 void* ab8500_fg_convert_mah_to_uwh (struct ab8500_fg*,int) ;
 struct ab8500_fg* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int ab8500_fg_get_property(struct power_supply *psy,
 enum power_supply_property psp,
 union power_supply_propval *val)
{
 struct ab8500_fg *di = power_supply_get_drvdata(psy);
 switch (psp) {
 case 128:
  if (di->flags.bat_ovv)
   val->intval = BATT_OVV_VALUE * 1000;
  else
   val->intval = di->vbat * 1000;
  break;
 case 132:
  val->intval = di->inst_curr * 1000;
  break;
 case 133:
  val->intval = di->avg_curr * 1000;
  break;
 case 130:
  val->intval = ab8500_fg_convert_mah_to_uwh(di,
    di->bat_cap.max_mah_design);
  break;
 case 131:
  val->intval = ab8500_fg_convert_mah_to_uwh(di,
    di->bat_cap.max_mah);
  break;
 case 129:
  if (di->flags.batt_unknown && !di->bm->chg_unknown_bat &&
    di->flags.batt_id_received)
   val->intval = ab8500_fg_convert_mah_to_uwh(di,
     di->bat_cap.max_mah);
  else
   val->intval = ab8500_fg_convert_mah_to_uwh(di,
     di->bat_cap.prev_mah);
  break;
 case 135:
  val->intval = di->bat_cap.max_mah_design;
  break;
 case 136:
  val->intval = di->bat_cap.max_mah;
  break;
 case 134:
  if (di->flags.batt_unknown && !di->bm->chg_unknown_bat &&
    di->flags.batt_id_received)
   val->intval = di->bat_cap.max_mah;
  else
   val->intval = di->bat_cap.prev_mah;
  break;
 case 138:
  if (di->flags.batt_unknown && !di->bm->chg_unknown_bat &&
    di->flags.batt_id_received)
   val->intval = 100;
  else
   val->intval = di->bat_cap.prev_percent;
  break;
 case 137:
  if (di->flags.batt_unknown && !di->bm->chg_unknown_bat &&
    di->flags.batt_id_received)
   val->intval = POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN;
  else
   val->intval = di->bat_cap.prev_level;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
