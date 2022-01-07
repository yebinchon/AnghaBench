
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ldo {int base; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;
 int WM831X_LDO7_ON_MODE ;
 int WM831X_LDO_ON_CONTROL ;
 struct wm831x_ldo* rdev_get_drvdata (struct regulator_dev*) ;
 int wm831x_reg_read (struct wm831x*,int) ;

__attribute__((used)) static unsigned int wm831x_aldo_get_mode(struct regulator_dev *rdev)
{
 struct wm831x_ldo *ldo = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = ldo->wm831x;
 int on_reg = ldo->base + WM831X_LDO_ON_CONTROL;
 int ret;

 ret = wm831x_reg_read(wm831x, on_reg);
 if (ret < 0)
  return 0;

 if (ret & WM831X_LDO7_ON_MODE)
  return REGULATOR_MODE_IDLE;
 else
  return REGULATOR_MODE_NORMAL;
}
