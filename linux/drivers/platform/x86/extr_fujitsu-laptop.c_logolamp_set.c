
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
 int FUNC_LED_OFF ;
 int FUNC_LED_ON ;
 int LED_FULL ;
 int LED_HALF ;
 int LOGOLAMP_ALWAYS ;
 int LOGOLAMP_POWERON ;
 int call_fext_func (struct acpi_device*,int ,int,int ,int) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static int logolamp_set(struct led_classdev *cdev,
   enum led_brightness brightness)
{
 struct acpi_device *device = to_acpi_device(cdev->dev->parent);
 int poweron = FUNC_LED_ON, always = FUNC_LED_ON;
 int ret;

 if (brightness < LED_HALF)
  poweron = FUNC_LED_OFF;

 if (brightness < LED_FULL)
  always = FUNC_LED_OFF;

 ret = call_fext_func(device, FUNC_LEDS, 0x1, LOGOLAMP_POWERON, poweron);
 if (ret < 0)
  return ret;

 return call_fext_func(device, FUNC_LEDS, 0x1, LOGOLAMP_ALWAYS, always);
}
