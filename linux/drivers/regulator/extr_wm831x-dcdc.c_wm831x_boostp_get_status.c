
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_dcdc {struct wm831x* wm831x; } ;
struct wm831x {int dev; } ;
struct regulator_dev {int dummy; } ;


 int REGULATOR_STATUS_ERROR ;
 int REGULATOR_STATUS_OFF ;
 int REGULATOR_STATUS_ON ;
 int WM831X_DCDC_STATUS ;
 int WM831X_DCDC_UV_STATUS ;
 int dev_dbg (int ,char*,int) ;
 struct wm831x_dcdc* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_boostp_get_status(struct regulator_dev *rdev)
{
 struct wm831x_dcdc *dcdc = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = dcdc->wm831x;
 int ret;


 ret = wm831x_reg_read(wm831x, WM831X_DCDC_UV_STATUS);
 if (ret < 0)
  return ret;

 if (ret & (1 << rdev_get_id(rdev))) {
  dev_dbg(wm831x->dev, "DCDC%d under voltage\n",
   rdev_get_id(rdev) + 1);
  return REGULATOR_STATUS_ERROR;
 }


 ret = wm831x_reg_read(wm831x, WM831X_DCDC_STATUS);
 if (ret < 0)
  return ret;
 if (ret & (1 << rdev_get_id(rdev)))
  return REGULATOR_STATUS_ON;
 else
  return REGULATOR_STATUS_OFF;
}
