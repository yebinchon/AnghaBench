
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
typedef int acpi_status ;
typedef void* acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int cmpc_get_rfkill_wlan (void*,unsigned long long*) ;
 int rfkill_set_sw_state (struct rfkill*,int) ;

__attribute__((used)) static void cmpc_rfkill_query(struct rfkill *rfkill, void *data)
{
 acpi_status status;
 acpi_handle handle;
 unsigned long long state;
 bool blocked;

 handle = data;
 status = cmpc_get_rfkill_wlan(handle, &state);
 if (ACPI_SUCCESS(status)) {
  blocked = state & 1 ? 0 : 1;
  rfkill_set_sw_state(rfkill, blocked);
 }
}
