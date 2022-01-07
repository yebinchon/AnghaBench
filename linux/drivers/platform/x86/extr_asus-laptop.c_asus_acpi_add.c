
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int is_pega_lucid; struct acpi_device* device; int handle; } ;
struct acpi_device {struct asus_laptop* driver_data; int handle; } ;


 int ASUS_LAPTOP_CLASS ;
 int ASUS_LAPTOP_DEVICE_NAME ;
 int ASUS_LAPTOP_VERSION ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ acpi_backlight_vendor ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 scalar_t__ acpi_video_get_backlight_type () ;
 int asus_acpi_init (struct asus_laptop*) ;
 int asus_backlight_exit (struct asus_laptop*) ;
 int asus_backlight_init (struct asus_laptop*) ;
 int asus_check_pega_lucid (struct asus_laptop*) ;
 int asus_device_present ;
 int asus_dmi_check () ;
 int asus_input_exit (struct asus_laptop*) ;
 int asus_input_init (struct asus_laptop*) ;
 int asus_led_exit (struct asus_laptop*) ;
 int asus_led_init (struct asus_laptop*) ;
 int asus_platform_exit (struct asus_laptop*) ;
 int asus_platform_init (struct asus_laptop*) ;
 int asus_rfkill_exit (struct asus_laptop*) ;
 int asus_rfkill_init (struct asus_laptop*) ;
 int kfree (struct asus_laptop*) ;
 struct asus_laptop* kzalloc (int,int ) ;
 int pega_accel_exit (struct asus_laptop*) ;
 int pega_accel_init (struct asus_laptop*) ;
 int pega_rfkill_init (struct asus_laptop*) ;
 int pr_notice (char*,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int asus_acpi_add(struct acpi_device *device)
{
 struct asus_laptop *asus;
 int result;

 pr_notice("Asus Laptop Support version %s\n",
    ASUS_LAPTOP_VERSION);
 asus = kzalloc(sizeof(struct asus_laptop), GFP_KERNEL);
 if (!asus)
  return -ENOMEM;
 asus->handle = device->handle;
 strcpy(acpi_device_name(device), ASUS_LAPTOP_DEVICE_NAME);
 strcpy(acpi_device_class(device), ASUS_LAPTOP_CLASS);
 device->driver_data = asus;
 asus->device = device;

 asus_dmi_check();

 result = asus_acpi_init(asus);
 if (result)
  goto fail_platform;





 asus->is_pega_lucid = asus_check_pega_lucid(asus);
 result = asus_platform_init(asus);
 if (result)
  goto fail_platform;

 if (acpi_video_get_backlight_type() == acpi_backlight_vendor) {
  result = asus_backlight_init(asus);
  if (result)
   goto fail_backlight;
 }

 result = asus_input_init(asus);
 if (result)
  goto fail_input;

 result = asus_led_init(asus);
 if (result)
  goto fail_led;

 result = asus_rfkill_init(asus);
 if (result && result != -ENODEV)
  goto fail_rfkill;

 result = pega_accel_init(asus);
 if (result && result != -ENODEV)
  goto fail_pega_accel;

 result = pega_rfkill_init(asus);
 if (result && result != -ENODEV)
  goto fail_pega_rfkill;

 asus_device_present = 1;
 return 0;

fail_pega_rfkill:
 pega_accel_exit(asus);
fail_pega_accel:
 asus_rfkill_exit(asus);
fail_rfkill:
 asus_led_exit(asus);
fail_led:
 asus_input_exit(asus);
fail_input:
 asus_backlight_exit(asus);
fail_backlight:
 asus_platform_exit(asus);
fail_platform:
 kfree(asus);

 return result;
}
