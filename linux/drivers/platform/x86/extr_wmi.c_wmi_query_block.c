
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_block {int dummy; } ;
struct acpi_buffer {int dummy; } ;
typedef int acpi_status ;


 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int __query_block (struct wmi_block*,int ,struct acpi_buffer*) ;
 int find_guid (char const*,struct wmi_block**) ;

acpi_status wmi_query_block(const char *guid_string, u8 instance,
       struct acpi_buffer *out)
{
 struct wmi_block *wblock;

 if (!guid_string)
  return AE_BAD_PARAMETER;

 if (!find_guid(guid_string, &wblock))
  return AE_ERROR;

 return __query_block(wblock, instance, out);
}
