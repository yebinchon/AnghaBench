
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct asus_laptop {TYPE_5__* pega_accel_poll; int * backlight_device; TYPE_2__* device; int * event_count; } ;
struct acpi_device {int dummy; } ;
struct TYPE_10__ {TYPE_4__* input; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_9__ {TYPE_3__ dev; } ;
struct TYPE_6__ {int device_class; } ;
struct TYPE_7__ {int dev; TYPE_1__ pnp; } ;


 int ATKD_BRNDOWN ;
 int ATKD_BRNDOWN_MAX ;
 int ATKD_BRNDOWN_MIN ;
 int ATKD_BRNUP ;
 int ATKD_BRNUP_MAX ;
 int ATKD_BRNUP_MIN ;
 int KOBJ_CHANGE ;
 int acpi_bus_generate_netlink_event (int ,int ,int,scalar_t__) ;
 struct asus_laptop* acpi_driver_data (struct acpi_device*) ;
 int asus_backlight_notify (struct asus_laptop*) ;
 int asus_input_notify (struct asus_laptop*,int) ;
 int dev_name (int *) ;
 int kobject_uevent (int *,int ) ;

__attribute__((used)) static void asus_acpi_notify(struct acpi_device *device, u32 event)
{
 struct asus_laptop *asus = acpi_driver_data(device);
 u16 count;


 count = asus->event_count[event % 128]++;
 acpi_bus_generate_netlink_event(asus->device->pnp.device_class,
     dev_name(&asus->device->dev), event,
     count);

 if (event >= ATKD_BRNUP_MIN && event <= ATKD_BRNUP_MAX)
  event = ATKD_BRNUP;
 else if (event >= ATKD_BRNDOWN_MIN &&
   event <= ATKD_BRNDOWN_MAX)
  event = ATKD_BRNDOWN;


 if (event == ATKD_BRNDOWN || event == ATKD_BRNUP) {
  if (asus->backlight_device != ((void*)0)) {

   asus_backlight_notify(asus);
   return ;
  }
 }


 if (asus->pega_accel_poll && event == 0xEA) {
  kobject_uevent(&asus->pega_accel_poll->input->dev.kobj,
          KOBJ_CHANGE);
  return ;
 }

 asus_input_notify(asus, event);
}
