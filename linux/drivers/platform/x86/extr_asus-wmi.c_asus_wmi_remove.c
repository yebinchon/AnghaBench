
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct asus_wmi {int platform_device; TYPE_1__* driver; } ;
struct TYPE_2__ {int event_guid; } ;


 int asus_fan_set_auto (struct asus_wmi*) ;
 int asus_wmi_backlight_exit (struct asus_wmi*) ;
 int asus_wmi_battery_exit (struct asus_wmi*) ;
 int asus_wmi_debugfs_exit (struct asus_wmi*) ;
 int asus_wmi_input_exit (struct asus_wmi*) ;
 int asus_wmi_led_exit (struct asus_wmi*) ;
 int asus_wmi_rfkill_exit (struct asus_wmi*) ;
 int asus_wmi_sysfs_exit (int ) ;
 int kfree (struct asus_wmi*) ;
 struct asus_wmi* platform_get_drvdata (struct platform_device*) ;
 int wmi_remove_notify_handler (int ) ;

__attribute__((used)) static int asus_wmi_remove(struct platform_device *device)
{
 struct asus_wmi *asus;

 asus = platform_get_drvdata(device);
 wmi_remove_notify_handler(asus->driver->event_guid);
 asus_wmi_backlight_exit(asus);
 asus_wmi_input_exit(asus);
 asus_wmi_led_exit(asus);
 asus_wmi_rfkill_exit(asus);
 asus_wmi_debugfs_exit(asus);
 asus_wmi_sysfs_exit(asus->platform_device);
 asus_fan_set_auto(asus);
 asus_wmi_battery_exit(asus);

 kfree(asus);
 return 0;
}
