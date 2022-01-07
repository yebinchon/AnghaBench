
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SYSTEM_NOTIFY ;
 int ENODEV ;
 int acpi_get_handle (int *,char*,int *) ;
 int acpi_install_notify_handler (int ,int ,int ,struct eeepc_laptop*) ;
 int eeepc_rfkill_hotplug (struct eeepc_laptop*,int ) ;
 int eeepc_rfkill_notify ;
 int pr_warn (char*,char*) ;

__attribute__((used)) static int eeepc_register_rfkill_notifier(struct eeepc_laptop *eeepc,
       char *node)
{
 acpi_status status;
 acpi_handle handle;

 status = acpi_get_handle(((void*)0), node, &handle);

 if (ACPI_FAILURE(status))
  return -ENODEV;

 status = acpi_install_notify_handler(handle,
          ACPI_SYSTEM_NOTIFY,
          eeepc_rfkill_notify,
          eeepc);
 if (ACPI_FAILURE(status))
  pr_warn("Failed to register notify on %s\n", node);





 eeepc_rfkill_hotplug(eeepc, handle);
 return 0;
}
