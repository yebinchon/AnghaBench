
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct surface_button {scalar_t__ suspended; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
struct acpi_device {int dev; } ;


 int KEY_LEFTMETA ;
 int KEY_POWER ;
 int KEY_RESERVED ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 struct surface_button* acpi_driver_data (struct acpi_device*) ;
 int dev_info_ratelimited (int *,char*,int) ;
 int dev_warn_once (int *,char*) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 int pm_wakeup_dev_event (int *,int ,scalar_t__) ;

__attribute__((used)) static void surface_button_notify(struct acpi_device *device, u32 event)
{
 struct surface_button *button = acpi_driver_data(device);
 struct input_dev *input;
 int key_code = KEY_RESERVED;
 bool pressed = 0;

 switch (event) {

 case 135:
  pressed = 1;

 case 131:
  key_code = KEY_POWER;
  break;

 case 136:
  pressed = 1;

 case 132:
  key_code = KEY_LEFTMETA;
  break;

 case 133:
  pressed = 1;

 case 129:
  key_code = KEY_VOLUMEUP;
  break;

 case 134:
  pressed = 1;

 case 130:
  key_code = KEY_VOLUMEDOWN;
  break;
 case 128:
  dev_warn_once(&device->dev, "Tablet mode is not supported\n");
  break;
 default:
  dev_info_ratelimited(&device->dev,
         "Unsupported event [0x%x]\n", event);
  break;
 }
 input = button->input;
 if (key_code == KEY_RESERVED)
  return;
 if (pressed)
  pm_wakeup_dev_event(&device->dev, 0, button->suspended);
 if (button->suspended)
  return;
 input_report_key(input, key_code, pressed?1:0);
 input_sync(input);
}
