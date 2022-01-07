
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_isink {int reg; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int WM831X_CS1_DRIVE ;
 int WM831X_CS1_ENA ;
 struct wm831x_isink* rdev_get_drvdata (struct regulator_dev*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_isink_is_enabled(struct regulator_dev *rdev)
{
 struct wm831x_isink *isink = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = isink->wm831x;
 int ret;

 ret = wm831x_reg_read(wm831x, isink->reg);
 if (ret < 0)
  return ret;

 if ((ret & (WM831X_CS1_ENA | WM831X_CS1_DRIVE)) ==
     (WM831X_CS1_ENA | WM831X_CS1_DRIVE))
  return 1;
 else
  return 0;
}
