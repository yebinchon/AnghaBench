
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_5__ {char* name; scalar_t__ brightness; int flags; int brightness_set; int max_brightness; } ;
struct nvec_led {TYPE_2__ cdev; struct nvec_chip* nvec; } ;
struct nvec_chip {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_CORE_SUSPENDRESUME ;
 int NVEC_LED_MAX ;
 struct nvec_chip* dev_get_drvdata (int ) ;
 struct nvec_led* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_led_classdev_register (TYPE_1__*,TYPE_2__*) ;
 int nvec_led_brightness_set ;
 int platform_set_drvdata (struct platform_device*,struct nvec_led*) ;

__attribute__((used)) static int nvec_paz00_probe(struct platform_device *pdev)
{
 struct nvec_chip *nvec = dev_get_drvdata(pdev->dev.parent);
 struct nvec_led *led;
 int ret = 0;

 led = devm_kzalloc(&pdev->dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 led->cdev.max_brightness = NVEC_LED_MAX;

 led->cdev.brightness_set = nvec_led_brightness_set;
 led->cdev.name = "paz00-led";
 led->cdev.flags |= LED_CORE_SUSPENDRESUME;
 led->nvec = nvec;

 platform_set_drvdata(pdev, led);

 ret = devm_led_classdev_register(&pdev->dev, &led->cdev);
 if (ret < 0)
  return ret;


 led->cdev.brightness = 0;

 return 0;
}
