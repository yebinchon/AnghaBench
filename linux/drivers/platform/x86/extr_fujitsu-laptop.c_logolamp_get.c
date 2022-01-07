
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
 int FUNC_LED_ON ;
 int LED_FULL ;
 int LED_HALF ;
 int LED_OFF ;
 int LOGOLAMP_ALWAYS ;
 int LOGOLAMP_POWERON ;
 int call_fext_func (struct acpi_device*,int ,int,int ,int) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static enum led_brightness logolamp_get(struct led_classdev *cdev)
{
 struct acpi_device *device = to_acpi_device(cdev->dev->parent);
 int ret;

 ret = call_fext_func(device, FUNC_LEDS, 0x2, LOGOLAMP_ALWAYS, 0x0);
 if (ret == FUNC_LED_ON)
  return LED_FULL;

 ret = call_fext_func(device, FUNC_LEDS, 0x2, LOGOLAMP_POWERON, 0x0);
 if (ret == FUNC_LED_ON)
  return LED_HALF;

 return LED_OFF;
}
