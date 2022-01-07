
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 scalar_t__ ACPI_TYPE_BUFFER ;
 int LED_FULL ;
 int LED_HALF ;
 int LED_OFF ;
 int WM_GET ;
 int WM_KEY_LIGHT ;
 int kfree (union acpi_object*) ;
 union acpi_object* lg_wmab (int ,int ,int ) ;

__attribute__((used)) static enum led_brightness kbd_backlight_get(struct led_classdev *cdev)
{
 union acpi_object *r;
 int val;

 r = lg_wmab(WM_KEY_LIGHT, WM_GET, 0);

 if (!r)
  return LED_OFF;

 if (r->type != ACPI_TYPE_BUFFER || r->buffer.pointer[1] != 0x05) {
  kfree(r);
  return LED_OFF;
 }

 switch (r->buffer.pointer[0] & 0x27) {
 case 0x24:
  val = LED_FULL;
  break;
 case 0x22:
  val = LED_HALF;
  break;
 default:
  val = LED_OFF;
 }

 kfree(r);

 return val;
}
