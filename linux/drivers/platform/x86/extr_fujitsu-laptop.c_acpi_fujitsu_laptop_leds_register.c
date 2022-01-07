
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {char* name; char* default_trigger; int brightness_get; int brightness_set_blocking; } ;
struct fujitsu_laptop {int flags_supported; } ;
struct acpi_device {int dev; } ;


 int BIT (int) ;
 int ECO_LED ;
 int ENOMEM ;
 int FUNC_BUTTONS ;
 int FUNC_LEDS ;
 int GFP_KERNEL ;
 int KEYBOARD_LAMPS ;
 int LOGOLAMP_POWERON ;
 int UNSUPPORTED_CMD ;
 struct fujitsu_laptop* acpi_driver_data (struct acpi_device*) ;
 int call_fext_func (struct acpi_device*,int ,int,int,int) ;
 struct led_classdev* devm_kzalloc (int *,int,int ) ;
 int devm_led_classdev_register (int *,struct led_classdev*) ;
 int eco_led_get ;
 int eco_led_set ;
 int kblamps_get ;
 int kblamps_set ;
 int logolamp_get ;
 int logolamp_set ;
 int radio_led_get ;
 int radio_led_set ;

__attribute__((used)) static int acpi_fujitsu_laptop_leds_register(struct acpi_device *device)
{
 struct fujitsu_laptop *priv = acpi_driver_data(device);
 struct led_classdev *led;
 int ret;

 if (call_fext_func(device,
      FUNC_LEDS, 0x0, 0x0, 0x0) & LOGOLAMP_POWERON) {
  led = devm_kzalloc(&device->dev, sizeof(*led), GFP_KERNEL);
  if (!led)
   return -ENOMEM;

  led->name = "fujitsu::logolamp";
  led->brightness_set_blocking = logolamp_set;
  led->brightness_get = logolamp_get;
  ret = devm_led_classdev_register(&device->dev, led);
  if (ret)
   return ret;
 }

 if ((call_fext_func(device,
       FUNC_LEDS, 0x0, 0x0, 0x0) & KEYBOARD_LAMPS) &&
     (call_fext_func(device, FUNC_BUTTONS, 0x0, 0x0, 0x0) == 0x0)) {
  led = devm_kzalloc(&device->dev, sizeof(*led), GFP_KERNEL);
  if (!led)
   return -ENOMEM;

  led->name = "fujitsu::kblamps";
  led->brightness_set_blocking = kblamps_set;
  led->brightness_get = kblamps_get;
  ret = devm_led_classdev_register(&device->dev, led);
  if (ret)
   return ret;
 }
 if (priv->flags_supported & BIT(17)) {
  led = devm_kzalloc(&device->dev, sizeof(*led), GFP_KERNEL);
  if (!led)
   return -ENOMEM;

  led->name = "fujitsu::radio_led";
  led->brightness_set_blocking = radio_led_set;
  led->brightness_get = radio_led_get;
  led->default_trigger = "rfkill-any";
  ret = devm_led_classdev_register(&device->dev, led);
  if (ret)
   return ret;
 }






 if ((call_fext_func(device, FUNC_LEDS, 0x0, 0x0, 0x0) & BIT(14)) &&
     (call_fext_func(device,
       FUNC_LEDS, 0x2, ECO_LED, 0x0) != UNSUPPORTED_CMD)) {
  led = devm_kzalloc(&device->dev, sizeof(*led), GFP_KERNEL);
  if (!led)
   return -ENOMEM;

  led->name = "fujitsu::eco_led";
  led->brightness_set_blocking = eco_led_set;
  led->brightness_get = eco_led_get;
  ret = devm_led_classdev_register(&device->dev, led);
  if (ret)
   return ret;
 }

 return 0;
}
