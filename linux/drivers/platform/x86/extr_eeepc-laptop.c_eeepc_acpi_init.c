
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eeepc_laptop {int cm_supported; int handle; TYPE_2__* device; } ;
struct TYPE_3__ {int present; } ;
struct TYPE_4__ {TYPE_1__ status; } ;


 unsigned int DISABLE_ASL_DISPLAYSWITCH ;
 unsigned int DISABLE_ASL_WLAN ;
 int ENODEV ;
 int acpi_bus_get_status (TYPE_2__*) ;
 int cmsg_quirks (struct eeepc_laptop*) ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;
 int pr_notice (char*,unsigned int) ;
 scalar_t__ read_acpi_int (int ,char*,int *) ;
 scalar_t__ write_acpi_int (int ,char*,unsigned int) ;

__attribute__((used)) static int eeepc_acpi_init(struct eeepc_laptop *eeepc)
{
 unsigned int init_flags;
 int result;

 result = acpi_bus_get_status(eeepc->device);
 if (result)
  return result;
 if (!eeepc->device->status.present) {
  pr_err("Hotkey device not present, aborting\n");
  return -ENODEV;
 }

 init_flags = DISABLE_ASL_WLAN | DISABLE_ASL_DISPLAYSWITCH;
 pr_notice("Hotkey init flags 0x%x\n", init_flags);

 if (write_acpi_int(eeepc->handle, "INIT", init_flags)) {
  pr_err("Hotkey initialization failed\n");
  return -ENODEV;
 }


 if (read_acpi_int(eeepc->handle, "CMSG", &eeepc->cm_supported)) {
  pr_err("Get control methods supported failed\n");
  return -ENODEV;
 }
 cmsg_quirks(eeepc);
 pr_info("Get control methods supported: 0x%x\n", eeepc->cm_supported);

 return 0;
}
