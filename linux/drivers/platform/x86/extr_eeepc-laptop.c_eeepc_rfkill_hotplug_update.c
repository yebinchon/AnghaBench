
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int acpi_get_handle (int *,char*,int *) ;
 int eeepc_rfkill_hotplug (struct eeepc_laptop*,int ) ;

__attribute__((used)) static void eeepc_rfkill_hotplug_update(struct eeepc_laptop *eeepc, char *node)
{
 acpi_status status = AE_OK;
 acpi_handle handle;

 status = acpi_get_handle(((void*)0), node, &handle);

 if (ACPI_SUCCESS(status))
  eeepc_rfkill_hotplug(eeepc, handle);
}
