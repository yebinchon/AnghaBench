
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 int HP680_DEFAULT_INTENSITY ;
 int HP680_MAX_INTENSITY ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* devm_backlight_device_register (int *,char*,int *,int *,int *,struct backlight_properties*) ;
 int hp680bl_ops ;
 int hp680bl_send_intensity (struct backlight_device*) ;
 int memset (struct backlight_properties*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;

__attribute__((used)) static int hp680bl_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 struct backlight_device *bd;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = HP680_MAX_INTENSITY;
 bd = devm_backlight_device_register(&pdev->dev, "hp680-bl", &pdev->dev,
     ((void*)0), &hp680bl_ops, &props);
 if (IS_ERR(bd))
  return PTR_ERR(bd);

 platform_set_drvdata(pdev, bd);

 bd->props.brightness = HP680_DEFAULT_INTENSITY;
 hp680bl_send_intensity(bd);

 return 0;
}
