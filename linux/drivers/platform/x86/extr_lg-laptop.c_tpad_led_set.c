
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int WM_SET ;
 int WM_TLED ;
 int kfree (union acpi_object*) ;
 union acpi_object* lg_wmab (int ,int ,int) ;

__attribute__((used)) static void tpad_led_set(struct led_classdev *cdev,
    enum led_brightness brightness)
{
 union acpi_object *r;

 r = lg_wmab(WM_TLED, WM_SET, brightness > LED_OFF);
 kfree(r);
}
