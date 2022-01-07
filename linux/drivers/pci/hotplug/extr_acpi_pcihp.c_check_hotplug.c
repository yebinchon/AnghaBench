
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 scalar_t__ pcihp_is_ejectable (int ) ;

__attribute__((used)) static acpi_status
check_hotplug(acpi_handle handle, u32 lvl, void *context, void **rv)
{
 int *found = (int *)context;
 if (pcihp_is_ejectable(handle)) {
  *found = 1;
  return AE_CTRL_TERMINATE;
 }
 return AE_OK;
}
