
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_block {int acpi_device; } ;


 char* acpi_device_uid (int ) ;
 int find_guid (char const*,struct wmi_block**) ;

char *wmi_get_acpi_device_uid(const char *guid_string)
{
 struct wmi_block *wblock = ((void*)0);

 if (!find_guid(guid_string, &wblock))
  return ((void*)0);

 return acpi_device_uid(wblock->acpi_device);
}
