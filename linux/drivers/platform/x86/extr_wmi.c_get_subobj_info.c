
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device_info {int dummy; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 int EIO ;
 int ENOENT ;
 scalar_t__ acpi_get_handle (int ,char*,int *) ;
 scalar_t__ acpi_get_object_info (int ,struct acpi_device_info**) ;
 int kfree (struct acpi_device_info*) ;

__attribute__((used)) static int get_subobj_info(acpi_handle handle, const char *pathname,
      struct acpi_device_info **info)
{
 struct acpi_device_info *dummy_info, **info_ptr;
 acpi_handle subobj_handle;
 acpi_status status;

 status = acpi_get_handle(handle, (char *)pathname, &subobj_handle);
 if (status == AE_NOT_FOUND)
  return -ENOENT;
 else if (ACPI_FAILURE(status))
  return -EIO;

 info_ptr = info ? info : &dummy_info;
 status = acpi_get_object_info(subobj_handle, info_ptr);
 if (ACPI_FAILURE(status))
  return -EIO;

 if (!info)
  kfree(dummy_info);

 return 0;
}
