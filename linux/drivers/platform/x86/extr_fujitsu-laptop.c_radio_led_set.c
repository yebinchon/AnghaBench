
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {TYPE_1__* dev; } ;
struct acpi_device {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int parent; } ;


 int FUNC_FLAGS ;
 int LED_FULL ;
 int RADIO_LED_ON ;
 int call_fext_func (struct acpi_device*,int ,int,int,int) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static int radio_led_set(struct led_classdev *cdev,
    enum led_brightness brightness)
{
 struct acpi_device *device = to_acpi_device(cdev->dev->parent);

 if (brightness >= LED_FULL)
  return call_fext_func(device, FUNC_FLAGS, 0x5, RADIO_LED_ON,
          RADIO_LED_ON);
 else
  return call_fext_func(device, FUNC_FLAGS, 0x5, RADIO_LED_ON,
          0x0);
}
