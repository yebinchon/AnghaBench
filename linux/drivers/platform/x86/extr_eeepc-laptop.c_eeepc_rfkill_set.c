
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* acpi_handle ;


 int write_acpi_int (void*,int *,int) ;

__attribute__((used)) static int eeepc_rfkill_set(void *data, bool blocked)
{
 acpi_handle handle = data;

 return write_acpi_int(handle, ((void*)0), !blocked);
}
