
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct backlight_device {int dummy; } ;


 int BACKLIGHT_PLATFORM ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int SAMSUNGQ10_BL_MAX_INTENSITY ;
 struct backlight_device* backlight_device_register (char*,int *,int *,int *,struct backlight_properties*) ;
 int memset (struct backlight_properties*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;
 int samsungq10_bl_ops ;

__attribute__((used)) static int samsungq10_probe(struct platform_device *pdev)
{

 struct backlight_properties props;
 struct backlight_device *bd;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_PLATFORM;
 props.max_brightness = SAMSUNGQ10_BL_MAX_INTENSITY;
 bd = backlight_device_register("samsung", &pdev->dev, ((void*)0),
           &samsungq10_bl_ops, &props);
 if (IS_ERR(bd))
  return PTR_ERR(bd);

 platform_set_drvdata(pdev, bd);

 return 0;
}
