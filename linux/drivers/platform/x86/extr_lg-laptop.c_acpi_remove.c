
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int INIT_KBD_LED ;
 int INIT_TPAD_LED ;
 int dev_attribute_group ;
 int inited ;
 int kbd_backlight ;
 int led_classdev_unregister (int *) ;
 TYPE_2__* pf_device ;
 int pf_driver ;
 int platform_device_unregister (TYPE_2__*) ;
 int platform_driver_unregister (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int tpad_led ;
 int wmi_input_destroy () ;

__attribute__((used)) static int acpi_remove(struct acpi_device *device)
{
 sysfs_remove_group(&pf_device->dev.kobj, &dev_attribute_group);
 if (inited & INIT_KBD_LED)
  led_classdev_unregister(&kbd_backlight);

 if (inited & INIT_TPAD_LED)
  led_classdev_unregister(&tpad_led);

 wmi_input_destroy();
 platform_device_unregister(pf_device);
 pf_device = ((void*)0);
 platform_driver_unregister(&pf_driver);

 return 0;
}
