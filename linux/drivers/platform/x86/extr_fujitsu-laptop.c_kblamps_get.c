
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {TYPE_1__* dev; } ;
struct acpi_device {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int parent; } ;


 int FUNC_LEDS ;
 scalar_t__ FUNC_LED_ON ;
 int KEYBOARD_LAMPS ;
 int LED_FULL ;
 int LED_OFF ;
 scalar_t__ call_fext_func (struct acpi_device*,int ,int,int ,int) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static enum led_brightness kblamps_get(struct led_classdev *cdev)
{
 struct acpi_device *device = to_acpi_device(cdev->dev->parent);
 enum led_brightness brightness = LED_OFF;

 if (call_fext_func(device,
      FUNC_LEDS, 0x2, KEYBOARD_LAMPS, 0x0) == FUNC_LED_ON)
  brightness = LED_FULL;

 return brightness;
}
