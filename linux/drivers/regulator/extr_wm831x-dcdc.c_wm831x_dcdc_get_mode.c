
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct wm831x_dcdc {scalar_t__ base; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int BUG () ;
 unsigned int EINVAL ;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;
 int WM831X_DC1_ON_MODE_MASK ;
 int WM831X_DC1_ON_MODE_SHIFT ;




 scalar_t__ WM831X_DCDC_ON_CONFIG ;
 struct wm831x_dcdc* rdev_get_drvdata (struct regulator_dev*) ;
 int wm831x_reg_read (struct wm831x*,scalar_t__) ;

__attribute__((used)) static unsigned int wm831x_dcdc_get_mode(struct regulator_dev *rdev)

{
 struct wm831x_dcdc *dcdc = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = dcdc->wm831x;
 u16 reg = dcdc->base + WM831X_DCDC_ON_CONFIG;
 int val;

 val = wm831x_reg_read(wm831x, reg);
 if (val < 0)
  return val;

 val = (val & WM831X_DC1_ON_MODE_MASK) >> WM831X_DC1_ON_MODE_SHIFT;

 switch (val) {
 case 131:
  return REGULATOR_MODE_FAST;
 case 129:
  return REGULATOR_MODE_NORMAL;
 case 128:
  return REGULATOR_MODE_STANDBY;
 case 130:
  return REGULATOR_MODE_IDLE;
 default:
  BUG();
  return -EINVAL;
 }
}
