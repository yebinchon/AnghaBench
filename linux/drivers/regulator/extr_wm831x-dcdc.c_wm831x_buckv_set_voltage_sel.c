
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_dcdc {int base; unsigned int on_vsel; unsigned int dvs_vsel; scalar_t__ dvs_gpiod; struct wm831x* wm831x; } ;
struct wm831x {int dev; } ;
struct regulator_dev {int dummy; } ;


 int WM831X_DC1_DVS_VSEL_MASK ;
 int WM831X_DC1_ON_VSEL_MASK ;
 int WM831X_DCDC_DVS_CONTROL ;
 int WM831X_DCDC_ON_CONFIG ;
 int dev_warn (int ,char*,int) ;
 struct wm831x_dcdc* rdev_get_drvdata (struct regulator_dev*) ;
 int wm831x_buckv_set_dvs (struct regulator_dev*,int) ;
 int wm831x_set_bits (struct wm831x*,int,int ,unsigned int) ;

__attribute__((used)) static int wm831x_buckv_set_voltage_sel(struct regulator_dev *rdev,
     unsigned vsel)
{
 struct wm831x_dcdc *dcdc = rdev_get_drvdata(rdev);
 struct wm831x *wm831x = dcdc->wm831x;
 int on_reg = dcdc->base + WM831X_DCDC_ON_CONFIG;
 int dvs_reg = dcdc->base + WM831X_DCDC_DVS_CONTROL;
 int ret;


 if (dcdc->dvs_gpiod && dcdc->on_vsel == vsel)
  return wm831x_buckv_set_dvs(rdev, 0);

 if (dcdc->dvs_gpiod && dcdc->dvs_vsel == vsel)
  return wm831x_buckv_set_dvs(rdev, 1);


 ret = wm831x_set_bits(wm831x, on_reg, WM831X_DC1_ON_VSEL_MASK, vsel);
 if (ret < 0)
  return ret;
 dcdc->on_vsel = vsel;

 if (!dcdc->dvs_gpiod)
  return ret;


 ret = wm831x_buckv_set_dvs(rdev, 0);
 if (ret < 0)
  return ret;







 if (vsel > dcdc->dvs_vsel) {
  ret = wm831x_set_bits(wm831x, dvs_reg,
          WM831X_DC1_DVS_VSEL_MASK,
          vsel);
  if (ret == 0)
   dcdc->dvs_vsel = vsel;
  else
   dev_warn(wm831x->dev,
     "Failed to set DCDC DVS VSEL: %d\n", ret);
 }

 return 0;
}
