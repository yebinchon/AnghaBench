
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;


 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;
 int WM831X_CHARGER_STATUS ;


 int WM831X_CHG_STATE_MASK ;


 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_bat_check_type(struct wm831x *wm831x, int *type)
{
 int ret;

 ret = wm831x_reg_read(wm831x, WM831X_CHARGER_STATUS);
 if (ret < 0)
  return ret;

 switch (ret & WM831X_CHG_STATE_MASK) {
 case 129:
 case 128:
  *type = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
  break;
 case 131:
 case 130:
  *type = POWER_SUPPLY_CHARGE_TYPE_FAST;
  break;
 default:
  *type = POWER_SUPPLY_CHARGE_TYPE_NONE;
  break;
 }

 return 0;
}
