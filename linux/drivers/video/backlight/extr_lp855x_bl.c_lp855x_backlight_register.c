
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp855x_platform_data {scalar_t__ initial_brightness; int name; } ;
struct lp855x {struct backlight_device* bl; int dev; struct lp855x_platform_data* pdata; } ;
struct backlight_properties {scalar_t__ max_brightness; scalar_t__ brightness; int type; } ;
struct backlight_device {int dummy; } ;
typedef int props ;


 int BACKLIGHT_PLATFORM ;
 char* DEFAULT_BL_NAME ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 scalar_t__ MAX_BRIGHTNESS ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* devm_backlight_device_register (int ,char const*,int ,struct lp855x*,int *,struct backlight_properties*) ;
 int lp855x_bl_ops ;
 int memset (struct backlight_properties*,int ,int) ;

__attribute__((used)) static int lp855x_backlight_register(struct lp855x *lp)
{
 struct backlight_device *bl;
 struct backlight_properties props;
 struct lp855x_platform_data *pdata = lp->pdata;
 const char *name = pdata->name ? : DEFAULT_BL_NAME;

 memset(&props, 0, sizeof(props));
 props.type = BACKLIGHT_PLATFORM;
 props.max_brightness = MAX_BRIGHTNESS;

 if (pdata->initial_brightness > props.max_brightness)
  pdata->initial_brightness = props.max_brightness;

 props.brightness = pdata->initial_brightness;

 bl = devm_backlight_device_register(lp->dev, name, lp->dev, lp,
           &lp855x_bl_ops, &props);
 if (IS_ERR(bl))
  return PTR_ERR(bl);

 lp->bl = bl;

 return 0;
}
