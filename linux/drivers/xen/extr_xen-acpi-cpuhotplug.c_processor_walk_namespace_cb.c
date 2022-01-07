
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SYSTEM_NOTIFY ;
 int AE_CTRL_DEPTH ;
 int AE_OK ;


 int acpi_install_notify_handler (int ,int ,int ,int *) ;
 int acpi_processor_hotplug_notify ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int is_processor_device (int ) ;

__attribute__((used)) static acpi_status
processor_walk_namespace_cb(acpi_handle handle,
       u32 lvl, void *context, void **rv)
{
 acpi_status status;
 int *action = context;

 status = is_processor_device(handle);
 if (ACPI_FAILURE(status))
  return AE_OK;

 switch (*action) {
 case 129:
  acpi_install_notify_handler(handle,
         ACPI_SYSTEM_NOTIFY,
         acpi_processor_hotplug_notify,
         ((void*)0));
  break;
 case 128:
  acpi_remove_notify_handler(handle,
        ACPI_SYSTEM_NOTIFY,
        acpi_processor_hotplug_notify);
  break;
 default:
  break;
 }


 return AE_CTRL_DEPTH;
}
