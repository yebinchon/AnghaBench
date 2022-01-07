
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_7__ {int kbd_type; scalar_t__ kbd_mode; TYPE_2__* acpi_dev; int kbd_led; } ;
struct TYPE_5__ {int device_class; } ;
struct TYPE_6__ {TYPE_4__ dev; TYPE_1__ pnp; } ;


 int LED_FULL ;
 int LED_OFF ;
 scalar_t__ SCI_KBD_MODE_AUTO ;
 scalar_t__ SCI_KBD_MODE_ON ;
 int acpi_bus_generate_netlink_event (int ,int ,int,int ) ;
 int dev_name (TYPE_4__*) ;
 int led_classdev_notify_brightness_hw_changed (int *,int ) ;
 int pr_err (char*) ;
 scalar_t__ sysfs_update_group (int *,int *) ;
 TYPE_3__* toshiba_acpi ;
 int toshiba_attr_group ;

__attribute__((used)) static void toshiba_acpi_kbd_bl_work(struct work_struct *work)
{

 if (sysfs_update_group(&toshiba_acpi->acpi_dev->dev.kobj,
          &toshiba_attr_group))
  pr_err("Unable to update sysfs entries\n");


 if (toshiba_acpi->kbd_type == 2 &&
     toshiba_acpi->kbd_mode != SCI_KBD_MODE_AUTO)
  led_classdev_notify_brightness_hw_changed(&toshiba_acpi->kbd_led,
    (toshiba_acpi->kbd_mode == SCI_KBD_MODE_ON) ?
    LED_FULL : LED_OFF);


 acpi_bus_generate_netlink_event(toshiba_acpi->acpi_dev->pnp.device_class,
     dev_name(&toshiba_acpi->acpi_dev->dev),
     0x92, 0);
}
