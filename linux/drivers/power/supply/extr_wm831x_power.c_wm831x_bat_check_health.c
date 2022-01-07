
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;


 int POWER_SUPPLY_HEALTH_COLD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;
 int WM831X_BATT_COLD_STS ;
 int WM831X_BATT_HOT_STS ;
 int WM831X_BATT_OV_STS ;
 int WM831X_CHARGER_STATUS ;


 int WM831X_CHG_STATE_MASK ;

 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_bat_check_health(struct wm831x *wm831x, int *health)
{
 int ret;

 ret = wm831x_reg_read(wm831x, WM831X_CHARGER_STATUS);
 if (ret < 0)
  return ret;

 if (ret & WM831X_BATT_HOT_STS) {
  *health = POWER_SUPPLY_HEALTH_OVERHEAT;
  return 0;
 }

 if (ret & WM831X_BATT_COLD_STS) {
  *health = POWER_SUPPLY_HEALTH_COLD;
  return 0;
 }

 if (ret & WM831X_BATT_OV_STS) {
  *health = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
  return 0;
 }

 switch (ret & WM831X_CHG_STATE_MASK) {
 case 128:
 case 129:
  *health = POWER_SUPPLY_HEALTH_OVERHEAT;
  break;
 case 130:
  *health = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  break;
 default:
  *health = POWER_SUPPLY_HEALTH_GOOD;
  break;
 }

 return 0;
}
