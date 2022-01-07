
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct generic_bl_info {int limit_mask; char* name; int default_intensity; int max_intensity; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_2__ {int brightness; int power; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int backlight_update_status (struct backlight_device*) ;
 struct generic_bl_info* bl_machinfo ;
 struct generic_bl_info* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 struct backlight_device* devm_backlight_device_register (int *,char const*,int *,int *,int *,struct backlight_properties*) ;
 struct backlight_device* generic_backlight_device ;
 int genericbl_ops ;
 int memset (struct backlight_properties*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;

__attribute__((used)) static int genericbl_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 struct generic_bl_info *machinfo = dev_get_platdata(&pdev->dev);
 const char *name = "generic-bl";
 struct backlight_device *bd;

 bl_machinfo = machinfo;
 if (!machinfo->limit_mask)
  machinfo->limit_mask = -1;

 if (machinfo->name)
  name = machinfo->name;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = machinfo->max_intensity;
 bd = devm_backlight_device_register(&pdev->dev, name, &pdev->dev,
     ((void*)0), &genericbl_ops, &props);
 if (IS_ERR(bd))
  return PTR_ERR(bd);

 platform_set_drvdata(pdev, bd);

 bd->props.power = FB_BLANK_UNBLANK;
 bd->props.brightness = machinfo->default_intensity;
 backlight_update_status(bd);

 generic_backlight_device = bd;

 dev_info(&pdev->dev, "Generic Backlight Driver Initialized.\n");
 return 0;
}
