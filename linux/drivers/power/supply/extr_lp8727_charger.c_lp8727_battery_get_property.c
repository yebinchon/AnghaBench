
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
typedef int u8 ;
struct TYPE_3__ {int parent; } ;
struct power_supply {TYPE_2__* desc; TYPE_1__ dev; } ;
struct lp8727_platform_data {int (* get_batt_temp ) () ;int (* get_batt_capacity ) () ;int (* get_batt_level ) () ;int (* get_batt_present ) () ;} ;
struct lp8727_chg {int devid; struct lp8727_platform_data* pdata; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
typedef enum lp8727_die_temp { ____Placeholder_lp8727_die_temp } lp8727_die_temp ;
struct TYPE_4__ {int name; } ;


 int EINVAL ;
 int LP8727_CHGSTAT ;
 int LP8727_STATUS1 ;
 int LP8727_STATUS2 ;
 int LP8727_STAT_EOC ;
 int LP8727_TEMP_SHIFT ;
 int LP8727_TEMP_STAT ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;






 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 struct lp8727_chg* dev_get_drvdata (int ) ;
 int lp8727_is_charger_attached (int ,int ) ;
 int lp8727_is_high_temperature (int) ;
 int lp8727_read_byte (struct lp8727_chg*,int ,int*) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 () ;

__attribute__((used)) static int lp8727_battery_get_property(struct power_supply *psy,
           enum power_supply_property psp,
           union power_supply_propval *val)
{
 struct lp8727_chg *pchg = dev_get_drvdata(psy->dev.parent);
 struct lp8727_platform_data *pdata = pchg->pdata;
 enum lp8727_die_temp temp;
 u8 read;

 switch (psp) {
 case 130:
  if (!lp8727_is_charger_attached(psy->desc->name, pchg->devid)) {
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
   return 0;
  }

  lp8727_read_byte(pchg, LP8727_STATUS1, &read);

  val->intval = (read & LP8727_CHGSTAT) == LP8727_STAT_EOC ?
    POWER_SUPPLY_STATUS_FULL :
    POWER_SUPPLY_STATUS_CHARGING;
  break;
 case 132:
  lp8727_read_byte(pchg, LP8727_STATUS2, &read);
  temp = (read & LP8727_TEMP_STAT) >> LP8727_TEMP_SHIFT;

  val->intval = lp8727_is_high_temperature(temp) ?
   POWER_SUPPLY_HEALTH_OVERHEAT :
   POWER_SUPPLY_HEALTH_GOOD;
  break;
 case 131:
  if (!pdata)
   return -EINVAL;

  if (pdata->get_batt_present)
   val->intval = pdata->get_batt_present();
  break;
 case 128:
  if (!pdata)
   return -EINVAL;

  if (pdata->get_batt_level)
   val->intval = pdata->get_batt_level();
  break;
 case 133:
  if (!pdata)
   return -EINVAL;

  if (pdata->get_batt_capacity)
   val->intval = pdata->get_batt_capacity();
  break;
 case 129:
  if (!pdata)
   return -EINVAL;

  if (pdata->get_batt_temp)
   val->intval = pdata->get_batt_temp();
  break;
 default:
  break;
 }

 return 0;
}
