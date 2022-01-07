
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fujitsu_bl {int brightness_level; int input; } ;
struct acpi_device {int handle; } ;


 int ACPI_FUJITSU_NOTIFY_CODE ;
 struct fujitsu_bl* acpi_driver_data (struct acpi_device*) ;
 int acpi_handle_debug (int ,char*,int,int) ;
 int acpi_handle_info (int ,char*,int ) ;
 int disable_brightness_adjust ;
 int get_lcd_level (struct acpi_device*) ;
 int set_lcd_level (struct acpi_device*,int) ;
 int sparse_keymap_report_event (int ,int,int,int) ;

__attribute__((used)) static void acpi_fujitsu_bl_notify(struct acpi_device *device, u32 event)
{
 struct fujitsu_bl *priv = acpi_driver_data(device);
 int oldb, newb;

 if (event != ACPI_FUJITSU_NOTIFY_CODE) {
  acpi_handle_info(device->handle, "unsupported event [0x%x]\n",
     event);
  sparse_keymap_report_event(priv->input, -1, 1, 1);
  return;
 }

 oldb = priv->brightness_level;
 get_lcd_level(device);
 newb = priv->brightness_level;

 acpi_handle_debug(device->handle,
     "brightness button event [%i -> %i]\n", oldb, newb);

 if (oldb == newb)
  return;

 if (!disable_brightness_adjust)
  set_lcd_level(device, newb);

 sparse_keymap_report_event(priv->input, oldb < newb, 1, 1);
}
