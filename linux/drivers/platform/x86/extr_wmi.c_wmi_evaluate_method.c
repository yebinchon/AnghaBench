
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_block {int dev; } ;
struct acpi_buffer {int dummy; } ;
typedef int acpi_status ;


 int AE_ERROR ;
 int find_guid (char const*,struct wmi_block**) ;
 int wmidev_evaluate_method (int *,int ,int ,struct acpi_buffer const*,struct acpi_buffer*) ;

acpi_status wmi_evaluate_method(const char *guid_string, u8 instance,
u32 method_id, const struct acpi_buffer *in, struct acpi_buffer *out)
{
 struct wmi_block *wblock = ((void*)0);

 if (!find_guid(guid_string, &wblock))
  return AE_ERROR;
 return wmidev_evaluate_method(&wblock->dev, instance, method_id,
          in, out);
}
