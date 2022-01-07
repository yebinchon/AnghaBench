
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union acpi_object {int type; } ;
typedef int u32 ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int kfree (scalar_t__) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int wmi_get_event_data (int ,struct acpi_buffer*) ;

__attribute__((used)) static void toshiba_wmi_notify(u32 value, void *context)
{
 struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 acpi_status status;

 status = wmi_get_event_data(value, &response);
 if (ACPI_FAILURE(status)) {
  pr_err("Bad event status 0x%x\n", status);
  return;
 }

 obj = (union acpi_object *)response.pointer;
 if (!obj)
  return;


 pr_debug("Unknown event received, obj type %x\n", obj->type);

 kfree(response.pointer);
}
