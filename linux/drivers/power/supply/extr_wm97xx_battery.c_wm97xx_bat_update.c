
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm97xx_batt_pdata {scalar_t__ charge_gpio; } ;
struct power_supply {TYPE_1__* desc; } ;
struct TYPE_2__ {int name; } ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int bat_status ;
 scalar_t__ gpio_get_value (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_changed (struct power_supply*) ;
 struct wm97xx_batt_pdata* power_supply_get_drvdata (struct power_supply*) ;
 int pr_debug (char*,int ,int,int) ;
 int work_lock ;

__attribute__((used)) static void wm97xx_bat_update(struct power_supply *bat_ps)
{
 int old_status = bat_status;
 struct wm97xx_batt_pdata *pdata = power_supply_get_drvdata(bat_ps);

 mutex_lock(&work_lock);

 bat_status = (pdata->charge_gpio >= 0) ?
   (gpio_get_value(pdata->charge_gpio) ?
   POWER_SUPPLY_STATUS_DISCHARGING :
   POWER_SUPPLY_STATUS_CHARGING) :
   POWER_SUPPLY_STATUS_UNKNOWN;

 if (old_status != bat_status) {
  pr_debug("%s: %i -> %i\n", bat_ps->desc->name, old_status,
     bat_status);
  power_supply_changed(bat_ps);
 }

 mutex_unlock(&work_lock);
}
