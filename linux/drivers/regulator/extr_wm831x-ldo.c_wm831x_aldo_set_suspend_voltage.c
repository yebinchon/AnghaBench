
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ldo {int base; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int WM831X_LDO7_ON_VSEL_MASK ;
 int WM831X_LDO_SLEEP_CONTROL ;
 struct wm831x_ldo* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_map_voltage_linear_range (struct regulator_dev*,int,int) ;
 int wm831x_set_bits (struct wm831x*,int,int ,int) ;

__attribute__((used)) static int wm831x_aldo_set_suspend_voltage(struct regulator_dev *rdev,
          int uV)
{
 struct wm831x_ldo *ldo = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = ldo->wm831x;
 int sel, reg = ldo->base + WM831X_LDO_SLEEP_CONTROL;

 sel = regulator_map_voltage_linear_range(rdev, uV, uV);
 if (sel < 0)
  return sel;

 return wm831x_set_bits(wm831x, reg, WM831X_LDO7_ON_VSEL_MASK, sel);
}
