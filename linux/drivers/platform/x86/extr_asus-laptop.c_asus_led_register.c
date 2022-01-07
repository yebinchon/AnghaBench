
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {char const* name; int max_brightness; int brightness_get; int brightness_set; } ;
struct asus_led {char const* method; int work; struct asus_laptop* asus; struct led_classdev led; } ;
struct asus_laptop {TYPE_1__* platform_device; int handle; } ;
struct TYPE_2__ {int dev; } ;


 int INIT_WORK (int *,int ) ;
 scalar_t__ acpi_check_handle (int ,char const*,int *) ;
 int asus_led_cdev_get ;
 int asus_led_cdev_set ;
 int asus_led_cdev_update ;
 int led_classdev_register (int *,struct led_classdev*) ;

__attribute__((used)) static int asus_led_register(struct asus_laptop *asus,
        struct asus_led *led,
        const char *name, const char *method)
{
 struct led_classdev *led_cdev = &led->led;

 if (!method || acpi_check_handle(asus->handle, method, ((void*)0)))
  return 0;

 led->asus = asus;
 led->method = method;

 INIT_WORK(&led->work, asus_led_cdev_update);
 led_cdev->name = name;
 led_cdev->brightness_set = asus_led_cdev_set;
 led_cdev->brightness_get = asus_led_cdev_get;
 led_cdev->max_brightness = 1;
 return led_classdev_register(&asus->platform_device->dev, led_cdev);
}
