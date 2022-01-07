
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int parent; } ;
struct platform_device {TYPE_3__ dev; int name; } ;
struct da9052_bl {TYPE_5__* da9052; int state; int led_reg; scalar_t__ brightness; } ;
struct backlight_properties {void* max_brightness; int type; } ;
struct TYPE_7__ {scalar_t__ brightness; void* max_brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_8__ {int driver_data; } ;


 int BACKLIGHT_RAW ;
 void* DA9052_MAX_BRIGHTNESS ;
 int DA9052_WLEDS_OFF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int da9052_adjust_wled_brightness (struct da9052_bl*) ;
 int da9052_backlight_ops ;
 int dev_err (TYPE_3__*,char*) ;
 TYPE_5__* dev_get_drvdata (int ) ;
 struct backlight_device* devm_backlight_device_register (TYPE_3__*,int ,int ,struct da9052_bl*,int *,struct backlight_properties*) ;
 struct da9052_bl* devm_kzalloc (TYPE_3__*,int,int ) ;
 TYPE_2__* platform_get_device_id (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;

__attribute__((used)) static int da9052_backlight_probe(struct platform_device *pdev)
{
 struct backlight_device *bl;
 struct backlight_properties props;
 struct da9052_bl *wleds;

 wleds = devm_kzalloc(&pdev->dev, sizeof(struct da9052_bl), GFP_KERNEL);
 if (!wleds)
  return -ENOMEM;

 wleds->da9052 = dev_get_drvdata(pdev->dev.parent);
 wleds->brightness = 0;
 wleds->led_reg = platform_get_device_id(pdev)->driver_data;
 wleds->state = DA9052_WLEDS_OFF;

 props.type = BACKLIGHT_RAW;
 props.max_brightness = DA9052_MAX_BRIGHTNESS;

 bl = devm_backlight_device_register(&pdev->dev, pdev->name,
     wleds->da9052->dev, wleds,
     &da9052_backlight_ops, &props);
 if (IS_ERR(bl)) {
  dev_err(&pdev->dev, "Failed to register backlight\n");
  return PTR_ERR(bl);
 }

 bl->props.max_brightness = DA9052_MAX_BRIGHTNESS;
 bl->props.brightness = 0;
 platform_set_drvdata(pdev, bl);

 return da9052_adjust_wled_brightness(wleds);
}
