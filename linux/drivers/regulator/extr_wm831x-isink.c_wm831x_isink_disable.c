
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
 int wm831x_set_bits (struct wm831x*,int ,int ,int ) ;

__attribute__((used)) static int wm831x_isink_disable(struct regulator_dev *rdev)
{
 struct wm831x_isink *isink = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = isink->wm831x;
 int ret;

 ret = wm831x_set_bits(wm831x, isink->reg, WM831X_CS1_DRIVE, 0);
 if (ret < 0)
  return ret;

 ret = wm831x_set_bits(wm831x, isink->reg, WM831X_CS1_ENA, 0);
 if (ret < 0)
  return ret;

 return ret;

}
