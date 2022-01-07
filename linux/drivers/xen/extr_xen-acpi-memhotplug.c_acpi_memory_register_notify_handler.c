
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SYSTEM_NOTIFY ;
 int AE_OK ;
 int acpi_install_notify_handler (int ,int ,int ,int *) ;
 int acpi_memory_device_notify ;
 int is_memory_device (int ) ;

__attribute__((used)) static acpi_status
acpi_memory_register_notify_handler(acpi_handle handle,
        u32 level, void *ctxt, void **retv)
{
 acpi_status status;

 status = is_memory_device(handle);
 if (ACPI_FAILURE(status))
  return AE_OK;

 status = acpi_install_notify_handler(handle, ACPI_SYSTEM_NOTIFY,
          acpi_memory_device_notify, ((void*)0));

 return AE_OK;
}
