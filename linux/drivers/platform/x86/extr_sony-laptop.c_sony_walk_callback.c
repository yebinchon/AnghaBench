
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device_info {int param_count; int name; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int acpi_get_object_info (int ,struct acpi_device_info**) ;
 int kfree (struct acpi_device_info*) ;
 int pr_warn (char*,char*,int ) ;

__attribute__((used)) static acpi_status sony_walk_callback(acpi_handle handle, u32 level,
          void *context, void **return_value)
{
 struct acpi_device_info *info;

 if (ACPI_SUCCESS(acpi_get_object_info(handle, &info))) {
  pr_warn("method: name: %4.4s, args %X\n",
   (char *)&info->name, info->param_count);

  kfree(info);
 }

 return AE_OK;
}
