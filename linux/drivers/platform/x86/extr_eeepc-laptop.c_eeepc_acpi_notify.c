
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct eeepc_laptop {int backlight_device; int * event_count; } ;
struct TYPE_2__ {int device_class; } ;
struct acpi_device {int dev; TYPE_1__ pnp; } ;


 int ACPI_MAX_SYS_NOTIFY ;
 int NOTIFY_BRN_MAX ;
 int NOTIFY_BRN_MIN ;
 int acpi_bus_generate_netlink_event (int ,int ,int,scalar_t__) ;
 struct eeepc_laptop* acpi_driver_data (struct acpi_device*) ;
 int dev_name (int *) ;
 int eeepc_backlight_notify (struct eeepc_laptop*) ;
 int eeepc_input_notify (struct eeepc_laptop*,int) ;

__attribute__((used)) static void eeepc_acpi_notify(struct acpi_device *device, u32 event)
{
 struct eeepc_laptop *eeepc = acpi_driver_data(device);
 int old_brightness, new_brightness;
 u16 count;

 if (event > ACPI_MAX_SYS_NOTIFY)
  return;
 count = eeepc->event_count[event % 128]++;
 acpi_bus_generate_netlink_event(device->pnp.device_class,
     dev_name(&device->dev), event,
     count);


 if (event < NOTIFY_BRN_MIN || event > NOTIFY_BRN_MAX) {
  eeepc_input_notify(eeepc, event);
  return;
 }


 if (!eeepc->backlight_device)
  return;


 old_brightness = eeepc_backlight_notify(eeepc);


 new_brightness = event - NOTIFY_BRN_MIN;

 if (new_brightness < old_brightness) {
  event = NOTIFY_BRN_MIN;
 } else if (new_brightness > old_brightness) {
  event = NOTIFY_BRN_MAX;
 } else {




 }
 eeepc_input_notify(eeepc, event);
}
