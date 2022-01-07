
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct backlight_properties {unsigned int max_brightness; int type; } ;
struct TYPE_2__ {unsigned int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct as3711_bl_data {scalar_t__ type; struct backlight_device* bl; } ;


 scalar_t__ AS3711_BL_SU1 ;
 int BACKLIGHT_RAW ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int as3711_bl_ops ;
 int backlight_update_status (struct backlight_device*) ;
 int dev_err (int *,char*) ;
 struct backlight_device* devm_backlight_device_register (int *,char*,int *,struct as3711_bl_data*,int *,struct backlight_properties*) ;

__attribute__((used)) static int as3711_bl_register(struct platform_device *pdev,
         unsigned int max_brightness, struct as3711_bl_data *su)
{
 struct backlight_properties props = {.type = BACKLIGHT_RAW,};
 struct backlight_device *bl;


 props.max_brightness = max_brightness;

 bl = devm_backlight_device_register(&pdev->dev,
           su->type == AS3711_BL_SU1 ?
           "as3711-su1" : "as3711-su2",
           &pdev->dev, su,
           &as3711_bl_ops, &props);
 if (IS_ERR(bl)) {
  dev_err(&pdev->dev, "failed to register backlight\n");
  return PTR_ERR(bl);
 }

 bl->props.brightness = props.max_brightness;

 backlight_update_status(bl);

 su->bl = bl;

 return 0;
}
