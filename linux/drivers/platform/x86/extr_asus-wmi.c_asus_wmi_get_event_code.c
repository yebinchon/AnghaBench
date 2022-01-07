
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef int u32 ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int EIO ;
 int WMI_EVENT_MASK ;
 int acpi_format_exception (int ) ;
 int kfree (union acpi_object*) ;
 int pr_warn (char*,int ) ;
 int wmi_get_event_data (int ,struct acpi_buffer*) ;

__attribute__((used)) static int asus_wmi_get_event_code(u32 value)
{
 struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 acpi_status status;
 int code;

 status = wmi_get_event_data(value, &response);
 if (ACPI_FAILURE(status)) {
  pr_warn("Failed to get WMI notify code: %s\n",
    acpi_format_exception(status));
  return -EIO;
 }

 obj = (union acpi_object *)response.pointer;

 if (obj && obj->type == ACPI_TYPE_INTEGER)
  code = (int)(obj->integer.value & WMI_EVENT_MASK);
 else
  code = -EIO;

 kfree(obj);
 return code;
}
