
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* string; } ;
struct acpi_device_info {scalar_t__ type; int valid; TYPE_1__ hardware_id; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_PROCESSOR_DEVICE_HID ;
 scalar_t__ ACPI_TYPE_PROCESSOR ;
 int ACPI_VALID_HID ;
 int AE_ERROR ;
 int AE_OK ;
 int acpi_get_object_info (int ,struct acpi_device_info**) ;
 int kfree (struct acpi_device_info*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static acpi_status is_processor_device(acpi_handle handle)
{
 struct acpi_device_info *info;
 char *hid;
 acpi_status status;

 status = acpi_get_object_info(handle, &info);
 if (ACPI_FAILURE(status))
  return status;

 if (info->type == ACPI_TYPE_PROCESSOR) {
  kfree(info);
  return AE_OK;
 }

 if (!(info->valid & ACPI_VALID_HID)) {
  kfree(info);
  return AE_ERROR;
 }

 hid = info->hardware_id.string;
 if ((hid == ((void*)0)) || strcmp(hid, ACPI_PROCESSOR_DEVICE_HID)) {
  kfree(info);
  return AE_ERROR;
 }

 kfree(info);
 return AE_OK;
}
