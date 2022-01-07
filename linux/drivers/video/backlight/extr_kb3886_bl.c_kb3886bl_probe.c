
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct kb3886bl_machinfo {int limit_mask; int default_intensity; int max_intensity; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_8__ {int brightness; int power; } ;
struct TYPE_9__ {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int backlight_update_status (TYPE_2__*) ;
 struct kb3886bl_machinfo* bl_machinfo ;
 struct kb3886bl_machinfo* dev_get_platdata (int *) ;
 TYPE_2__* devm_backlight_device_register (int *,char*,int *,int *,int *,struct backlight_properties*) ;
 TYPE_2__* kb3886_backlight_device ;
 int kb3886bl_ops ;
 int memset (struct backlight_properties*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;

__attribute__((used)) static int kb3886bl_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 struct kb3886bl_machinfo *machinfo = dev_get_platdata(&pdev->dev);

 bl_machinfo = machinfo;
 if (!machinfo->limit_mask)
  machinfo->limit_mask = -1;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = machinfo->max_intensity;
 kb3886_backlight_device = devm_backlight_device_register(&pdev->dev,
       "kb3886-bl", &pdev->dev,
       ((void*)0), &kb3886bl_ops,
       &props);
 if (IS_ERR(kb3886_backlight_device))
  return PTR_ERR(kb3886_backlight_device);

 platform_set_drvdata(pdev, kb3886_backlight_device);

 kb3886_backlight_device->props.power = FB_BLANK_UNBLANK;
 kb3886_backlight_device->props.brightness = machinfo->default_intensity;
 backlight_update_status(kb3886_backlight_device);

 return 0;
}
