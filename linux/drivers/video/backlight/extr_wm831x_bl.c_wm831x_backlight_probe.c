
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wm831x_pdata {struct wm831x_backlight_pdata* backlight; } ;
struct wm831x_backlight_pdata {scalar_t__ max_uA; int isink; } ;
struct wm831x_backlight_data {int isink_reg; scalar_t__ current_brightness; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct TYPE_8__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_7__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef int props ;


 int BACKLIGHT_RAW ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int WM831X_CURRENT_SINK_1 ;
 int WM831X_CURRENT_SINK_2 ;
 int WM831X_DC4_CONTROL ;
 int WM831X_DC4_ENA ;
 int WM831X_DC4_FBSRC ;
 int WM831X_DCDC_ENABLE ;
 int WM831X_ISINK_MAX_ISEL ;
 int backlight_update_status (struct backlight_device*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct wm831x* dev_get_drvdata (int ) ;
 struct wm831x_pdata* dev_get_platdata (int ) ;
 int dev_warn (TYPE_2__*,char*,scalar_t__,scalar_t__) ;
 struct backlight_device* devm_backlight_device_register (TYPE_2__*,char*,TYPE_2__*,struct wm831x_backlight_data*,int *,struct backlight_properties*) ;
 struct wm831x_backlight_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;
 int wm831x_backlight_ops ;
 scalar_t__* wm831x_isinkv_values ;
 int wm831x_reg_lock (struct wm831x*) ;
 int wm831x_reg_unlock (struct wm831x*) ;
 int wm831x_set_bits (struct wm831x*,int ,int,int) ;

__attribute__((used)) static int wm831x_backlight_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_pdata *wm831x_pdata = dev_get_platdata(pdev->dev.parent);
 struct wm831x_backlight_pdata *pdata;
 struct wm831x_backlight_data *data;
 struct backlight_device *bl;
 struct backlight_properties props;
 int ret, i, max_isel, isink_reg, dcdc_cfg;


 if (wm831x_pdata)
  pdata = wm831x_pdata->backlight;
 else
  pdata = ((void*)0);

 if (!pdata) {
  dev_err(&pdev->dev, "No platform data supplied\n");
  return -EINVAL;
 }


 for (i = 0; i < WM831X_ISINK_MAX_ISEL; i++) {
  if (wm831x_isinkv_values[i] > pdata->max_uA)
   break;
 }

 if (i == 0) {
  dev_err(&pdev->dev, "Invalid max_uA: %duA\n", pdata->max_uA);
  return -EINVAL;
 }
 max_isel = i - 1;

 if (pdata->max_uA != wm831x_isinkv_values[max_isel])
  dev_warn(&pdev->dev,
    "Maximum current is %duA not %duA as requested\n",
    wm831x_isinkv_values[max_isel], pdata->max_uA);

 switch (pdata->isink) {
 case 1:
  isink_reg = WM831X_CURRENT_SINK_1;
  dcdc_cfg = 0;
  break;
 case 2:
  isink_reg = WM831X_CURRENT_SINK_2;
  dcdc_cfg = WM831X_DC4_FBSRC;
  break;
 default:
  dev_err(&pdev->dev, "Invalid ISINK %d\n", pdata->isink);
  return -EINVAL;
 }


 ret = wm831x_reg_unlock(wm831x);
 if (ret < 0)
  return ret;

 ret = wm831x_set_bits(wm831x, WM831X_DC4_CONTROL, WM831X_DC4_FBSRC,
         dcdc_cfg);

 wm831x_reg_lock(wm831x);
 if (ret < 0)
  return ret;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 data->wm831x = wm831x;
 data->current_brightness = 0;
 data->isink_reg = isink_reg;

 memset(&props, 0, sizeof(props));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = max_isel;
 bl = devm_backlight_device_register(&pdev->dev, "wm831x", &pdev->dev,
     data, &wm831x_backlight_ops, &props);
 if (IS_ERR(bl)) {
  dev_err(&pdev->dev, "failed to register backlight\n");
  return PTR_ERR(bl);
 }

 bl->props.brightness = max_isel;

 platform_set_drvdata(pdev, bl);


 wm831x_set_bits(wm831x, WM831X_DCDC_ENABLE, WM831X_DC4_ENA, 0);

 backlight_update_status(bl);

 return 0;
}
