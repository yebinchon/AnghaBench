
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_2__ {int work; int led_classdev; } ;


 int EINVAL ;
 int flush_work (int *) ;
 int hp_accel_i8042_filter ;
 TYPE_1__ hpled_led ;
 int i8042_remove_filter (int ) ;
 int led_classdev_unregister (int *) ;
 int lis3_dev ;
 int lis3lv02d_joystick_disable (int *) ;
 int lis3lv02d_poweroff (int *) ;
 int lis3lv02d_remove_fs (int *) ;

__attribute__((used)) static int lis3lv02d_remove(struct acpi_device *device)
{
 if (!device)
  return -EINVAL;

 i8042_remove_filter(hp_accel_i8042_filter);
 lis3lv02d_joystick_disable(&lis3_dev);
 lis3lv02d_poweroff(&lis3_dev);

 led_classdev_unregister(&hpled_led.led_classdev);
 flush_work(&hpled_led.work);

 return lis3lv02d_remove_fs(&lis3_dev);
}
