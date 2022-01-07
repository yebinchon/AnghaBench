
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef void* acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int cmpc_get_rfkill_wlan (void*,unsigned long long*) ;
 int cmpc_set_rfkill_wlan (void*,unsigned long long) ;

__attribute__((used)) static int cmpc_rfkill_block(void *data, bool blocked)
{
 acpi_status status;
 acpi_handle handle;
 unsigned long long state;
 bool is_blocked;

 handle = data;
 status = cmpc_get_rfkill_wlan(handle, &state);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 is_blocked = state & 1 ? 0 : 1;
 if (is_blocked != blocked) {
  state = blocked ? 0 : 1;
  status = cmpc_set_rfkill_wlan(handle, state);
  if (ACPI_FAILURE(status))
   return -ENODEV;
 }
 return 0;
}
