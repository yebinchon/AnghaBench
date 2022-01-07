
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct wm831x_power {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;


 int WM831X_AUX_USB ;
 int WM831X_PWR_USB ;
 struct wm831x_power* dev_get_drvdata (int ) ;
 int wm831x_power_check_online (struct wm831x*,int ,union power_supply_propval*) ;
 int wm831x_power_read_voltage (struct wm831x*,int ,union power_supply_propval*) ;

__attribute__((used)) static int wm831x_usb_get_prop(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 struct wm831x_power *wm831x_power = dev_get_drvdata(psy->dev.parent);
 struct wm831x *wm831x = wm831x_power->wm831x;
 int ret = 0;

 switch (psp) {
 case 129:
  ret = wm831x_power_check_online(wm831x, WM831X_PWR_USB, val);
  break;
 case 128:
  ret = wm831x_power_read_voltage(wm831x, WM831X_AUX_USB, val);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
