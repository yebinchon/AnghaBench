
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct toshiba_acpi_dev {int kbd_event_generated; int kbd_type; int last_key_event; int kbd_mode; int kbd_led; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int device_class; } ;
struct acpi_device {TYPE_2__ dev; TYPE_1__ pnp; } ;


 int LED_FULL ;
 int LED_OFF ;
 int SCI_KBD_MODE_AUTO ;
 int SCI_KBD_MODE_ON ;
 int TOSHIBA_WMI_EVENT_GUID ;
 int acpi_bus_generate_netlink_event (int ,int ,int,int ) ;
 struct toshiba_acpi_dev* acpi_driver_data (struct acpi_device*) ;
 int dev_name (TYPE_2__*) ;
 int led_classdev_notify_brightness_hw_changed (int *,int ) ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 int sysfs_update_group (int *,int *) ;
 int toshiba_acpi_process_hotkeys (struct toshiba_acpi_dev*) ;
 int toshiba_attr_group ;
 int wmi_has_guid (int ) ;

__attribute__((used)) static void toshiba_acpi_notify(struct acpi_device *acpi_dev, u32 event)
{
 struct toshiba_acpi_dev *dev = acpi_driver_data(acpi_dev);

 switch (event) {
 case 0x80:






  if (wmi_has_guid(TOSHIBA_WMI_EVENT_GUID))
   return;
  toshiba_acpi_process_hotkeys(dev);
  break;
 case 0x81:
 case 0x82:
 case 0x83:
  pr_info("Dock event received %x\n", event);
  break;
 case 0x88:
  pr_info("Thermal event received\n");
  break;
 case 0x8f:
 case 0x90:
  break;
 case 0x8c:
 case 0x8b:
  pr_info("SATA power event received %x\n", event);
  break;
 case 0x92:
  dev->kbd_event_generated = 1;

  if (sysfs_update_group(&acpi_dev->dev.kobj,
           &toshiba_attr_group))
   pr_err("Unable to update sysfs entries\n");

  if (dev->kbd_type == 2 && dev->kbd_mode != SCI_KBD_MODE_AUTO)
   led_classdev_notify_brightness_hw_changed(&dev->kbd_led,
     (dev->kbd_mode == SCI_KBD_MODE_ON) ?
     LED_FULL : LED_OFF);
  break;
 case 0x85:
 case 0x8d:
 case 0x8e:
 case 0x94:
 case 0x95:
 default:
  pr_info("Unknown event received %x\n", event);
  break;
 }

 acpi_bus_generate_netlink_event(acpi_dev->pnp.device_class,
     dev_name(&acpi_dev->dev),
     event, (event == 0x80) ?
     dev->last_key_event : 0);
}
