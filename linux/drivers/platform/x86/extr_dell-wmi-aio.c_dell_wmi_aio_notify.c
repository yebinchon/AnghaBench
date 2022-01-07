
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* pointer; int length; } ;
struct TYPE_3__ {unsigned int value; } ;
union acpi_object {int type; TYPE_2__ buffer; TYPE_1__ integer; } ;
typedef int u32 ;
struct dell_wmi_event {unsigned int* event; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;


 scalar_t__ AE_OK ;
 int dell_wmi_aio_event_check (unsigned int*,int ) ;
 int dell_wmi_aio_input_dev ;
 int kfree (union acpi_object*) ;
 int pr_info (char*,scalar_t__) ;
 int sparse_keymap_report_event (int ,unsigned int,int,int) ;
 scalar_t__ wmi_get_event_data (int ,struct acpi_buffer*) ;

__attribute__((used)) static void dell_wmi_aio_notify(u32 value, void *context)
{
 struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 struct dell_wmi_event *event;
 acpi_status status;

 status = wmi_get_event_data(value, &response);
 if (status != AE_OK) {
  pr_info("bad event status 0x%x\n", status);
  return;
 }

 obj = (union acpi_object *)response.pointer;
 if (obj) {
  unsigned int scancode = 0;

  switch (obj->type) {
  case 128:

   scancode = obj->integer.value;
   sparse_keymap_report_event(dell_wmi_aio_input_dev,
    scancode, 1, 1);
   break;
  case 129:
   if (dell_wmi_aio_event_check(obj->buffer.pointer,
      obj->buffer.length)) {
    event = (struct dell_wmi_event *)
     obj->buffer.pointer;
    scancode = event->event[0];
   } else {


    if (obj->buffer.pointer &&
      obj->buffer.length > 0)
     scancode = obj->buffer.pointer[0];
   }
   if (scancode)
    sparse_keymap_report_event(
     dell_wmi_aio_input_dev,
     scancode, 1, 1);
   break;
  }
 }
 kfree(obj);
}
