
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct wm831x {int dummy; } ;


 int WM831X_SYSTEM_STATUS ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_power_check_online(struct wm831x *wm831x, int supply,
         union power_supply_propval *val)
{
 int ret;

 ret = wm831x_reg_read(wm831x, WM831X_SYSTEM_STATUS);
 if (ret < 0)
  return ret;

 if (ret & supply)
  val->intval = 1;
 else
  val->intval = 0;

 return 0;
}
