
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x_dcdc {int name; int dvs_vsel; int on_vsel; scalar_t__ base; int dvs_gpiod; scalar_t__ dvs_gpio_state; struct wm831x* wm831x; } ;
struct wm831x_buckv_pdata {int dvs_control_src; scalar_t__ dvs_init_state; } ;
struct wm831x {int dev; } ;
struct platform_device {int dev; } ;


 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WM831X_DC1_DVS_SRC_MASK ;
 int WM831X_DC1_DVS_SRC_SHIFT ;
 int WM831X_DC1_DVS_VSEL_MASK ;
 scalar_t__ WM831X_DCDC_DVS_CONTROL ;
 int dev_err (int ,char*,int,int) ;
 int dev_warn (int ,char*,int) ;
 int devm_gpiod_get (int *,char*,int ) ;
 int wm831x_set_bits (struct wm831x*,scalar_t__,int ,int) ;

__attribute__((used)) static void wm831x_buckv_dvs_init(struct platform_device *pdev,
      struct wm831x_dcdc *dcdc,
      struct wm831x_buckv_pdata *pdata)
{
 struct wm831x *wm831x = dcdc->wm831x;
 int ret;
 u16 ctrl;

 if (!pdata)
  return;




 dcdc->dvs_gpio_state = pdata->dvs_init_state;

 dcdc->dvs_gpiod = devm_gpiod_get(&pdev->dev, "dvs",
   dcdc->dvs_gpio_state ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW);
 if (IS_ERR(dcdc->dvs_gpiod)) {
  dev_err(wm831x->dev, "Failed to get %s DVS GPIO: %ld\n",
   dcdc->name, PTR_ERR(dcdc->dvs_gpiod));
  return;
 }

 switch (pdata->dvs_control_src) {
 case 1:
  ctrl = 2 << WM831X_DC1_DVS_SRC_SHIFT;
  break;
 case 2:
  ctrl = 3 << WM831X_DC1_DVS_SRC_SHIFT;
  break;
 default:
  dev_err(wm831x->dev, "Invalid DVS control source %d for %s\n",
   pdata->dvs_control_src, dcdc->name);
  return;
 }




 if (!dcdc->dvs_vsel) {
  ret = wm831x_set_bits(wm831x,
          dcdc->base + WM831X_DCDC_DVS_CONTROL,
          WM831X_DC1_DVS_VSEL_MASK, dcdc->on_vsel);
  if (ret == 0)
   dcdc->dvs_vsel = dcdc->on_vsel;
  else
   dev_warn(wm831x->dev, "Failed to set DVS_VSEL: %d\n",
     ret);
 }

 ret = wm831x_set_bits(wm831x, dcdc->base + WM831X_DCDC_DVS_CONTROL,
         WM831X_DC1_DVS_SRC_MASK, ctrl);
 if (ret < 0) {
  dev_err(wm831x->dev, "Failed to set %s DVS source: %d\n",
   dcdc->name, ret);
 }
}
