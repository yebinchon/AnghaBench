
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
typedef int u32 ;
struct key_entry {scalar_t__ type; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 scalar_t__ KE_KEY ;
 int kfree (scalar_t__) ;
 int pr_debug (char*,long,...) ;
 int pr_err (char*,int ) ;
 struct key_entry* sparse_keymap_entry_from_scancode (int ,int) ;
 int sparse_keymap_report_entry (int ,struct key_entry*,int,int) ;
 int wmi_get_event_data (int ,struct acpi_buffer*) ;
 int wmi_input_dev ;

__attribute__((used)) static void wmi_notify(u32 value, void *context)
{
 struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 acpi_status status;
 long data = (long)context;

 pr_debug("event guid %li\n", data);
 status = wmi_get_event_data(value, &response);
 if (ACPI_FAILURE(status)) {
  pr_err("Bad event status 0x%x\n", status);
  return;
 }

 obj = (union acpi_object *)response.pointer;
 if (!obj)
  return;

 if (obj->type == ACPI_TYPE_INTEGER) {
  int eventcode = obj->integer.value;
  struct key_entry *key;

  key =
      sparse_keymap_entry_from_scancode(wmi_input_dev, eventcode);
  if (key && key->type == KE_KEY)
   sparse_keymap_report_entry(wmi_input_dev, key, 1, 1);
 }

 pr_debug("Type: %i    Eventcode: 0x%llx\n", obj->type,
   obj->integer.value);
 kfree(response.pointer);
}
