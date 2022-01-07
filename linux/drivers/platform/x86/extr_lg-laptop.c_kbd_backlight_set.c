
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
typedef int u32 ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_FULL ;
 int LED_OFF ;
 int WM_KEY_LIGHT ;
 int WM_SET ;
 int kfree (union acpi_object*) ;
 union acpi_object* lg_wmab (int ,int ,int) ;

__attribute__((used)) static void kbd_backlight_set(struct led_classdev *cdev,
         enum led_brightness brightness)
{
 u32 val;
 union acpi_object *r;

 val = 0x22;
 if (brightness <= LED_OFF)
  val = 0;
 if (brightness >= LED_FULL)
  val = 0x24;
 r = lg_wmab(WM_KEY_LIGHT, WM_SET, val);
 kfree(r);
}
