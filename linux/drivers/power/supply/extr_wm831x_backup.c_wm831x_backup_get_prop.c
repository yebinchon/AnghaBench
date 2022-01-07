
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct wm831x_backup {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;



 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int WM831X_AUX_BKUP_BATT ;
 int WM831X_BACKUP_CHARGER_CONTROL ;
 int WM831X_BKUP_CHG_STS ;
 struct wm831x_backup* dev_get_drvdata (int ) ;
 int wm831x_backup_read_voltage (struct wm831x*,int ,union power_supply_propval*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_backup_get_prop(struct power_supply *psy,
      enum power_supply_property psp,
      union power_supply_propval *val)
{
 struct wm831x_backup *devdata = dev_get_drvdata(psy->dev.parent);
 struct wm831x *wm831x = devdata->wm831x;
 int ret = 0;

 ret = wm831x_reg_read(wm831x, WM831X_BACKUP_CHARGER_CONTROL);
 if (ret < 0)
  return ret;

 switch (psp) {
 case 129:
  if (ret & WM831X_BKUP_CHG_STS)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;

 case 128:
  ret = wm831x_backup_read_voltage(wm831x, WM831X_AUX_BKUP_BATT,
      val);
  break;

 case 130:
  if (ret & WM831X_BKUP_CHG_STS)
   val->intval = 1;
  else
   val->intval = 0;
  break;

 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
