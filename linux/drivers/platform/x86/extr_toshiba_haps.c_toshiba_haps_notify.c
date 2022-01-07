
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device_class; } ;
struct acpi_device {int dev; TYPE_1__ pnp; } ;


 int acpi_bus_generate_netlink_event (int ,int ,int ,int ) ;
 int dev_name (int *) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void toshiba_haps_notify(struct acpi_device *device, u32 event)
{
 pr_debug("Received event: 0x%x", event);

 acpi_bus_generate_netlink_event(device->pnp.device_class,
     dev_name(&device->dev),
     event, 0);
}
