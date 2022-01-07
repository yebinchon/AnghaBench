
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
typedef int u32 ;
typedef int u16 ;
struct key_entry {int keycode; } ;
struct event_return_value {int function; int device_state; int key_num; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef scalar_t__ acpi_status ;


 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_THREEG ;
 int ACER_CAP_WIRELESS ;
 int ACER_WMID3_GDS_BLUETOOTH ;
 int ACER_WMID3_GDS_THREEG ;
 int ACER_WMID3_GDS_TOUCHPAD ;
 int ACER_WMID3_GDS_WIRELESS ;
 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ AE_OK ;

 int KEY_TOUCHPAD_OFF ;
 int KEY_TOUCHPAD_ON ;




 int acer_gsensor_event () ;
 int acer_wmi_input_dev ;
 int bluetooth_rfkill ;
 int has_cap (int ) ;
 int kfree (union acpi_object*) ;
 int pr_debug (char*,int) ;
 int pr_warn (char*,int,...) ;
 int rfkill_set_sw_state (int ,int) ;
 struct key_entry* sparse_keymap_entry_from_scancode (int ,int ) ;
 int sparse_keymap_report_event (int ,int ,int,int) ;
 int threeg_rfkill ;
 int wireless_rfkill ;
 scalar_t__ wmi_get_event_data (int ,struct acpi_buffer*) ;

__attribute__((used)) static void acer_wmi_notify(u32 value, void *context)
{
 struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 struct event_return_value return_value;
 acpi_status status;
 u16 device_state;
 const struct key_entry *key;
 u32 scancode;

 status = wmi_get_event_data(value, &response);
 if (status != AE_OK) {
  pr_warn("bad event status 0x%x\n", status);
  return;
 }

 obj = (union acpi_object *)response.pointer;

 if (!obj)
  return;
 if (obj->type != ACPI_TYPE_BUFFER) {
  pr_warn("Unknown response received %d\n", obj->type);
  kfree(obj);
  return;
 }
 if (obj->buffer.length != 8) {
  pr_warn("Unknown buffer length %d\n", obj->buffer.length);
  kfree(obj);
  return;
 }

 return_value = *((struct event_return_value *)obj->buffer.pointer);
 kfree(obj);

 switch (return_value.function) {
 case 128:
  device_state = return_value.device_state;
  pr_debug("device state: 0x%x\n", device_state);

  key = sparse_keymap_entry_from_scancode(acer_wmi_input_dev,
       return_value.key_num);
  if (!key) {
   pr_warn("Unknown key number - 0x%x\n",
    return_value.key_num);
  } else {
   scancode = return_value.key_num;
   switch (key->keycode) {
   case 130:
   case 132:
    if (has_cap(ACER_CAP_WIRELESS))
     rfkill_set_sw_state(wireless_rfkill,
      !(device_state & ACER_WMID3_GDS_WIRELESS));
    if (has_cap(ACER_CAP_THREEG))
     rfkill_set_sw_state(threeg_rfkill,
      !(device_state & ACER_WMID3_GDS_THREEG));
    if (has_cap(ACER_CAP_BLUETOOTH))
     rfkill_set_sw_state(bluetooth_rfkill,
      !(device_state & ACER_WMID3_GDS_BLUETOOTH));
    break;
   case 131:
    scancode = (device_state & ACER_WMID3_GDS_TOUCHPAD) ?
      KEY_TOUCHPAD_ON : KEY_TOUCHPAD_OFF;
   }
   sparse_keymap_report_event(acer_wmi_input_dev, scancode, 1, 1);
  }
  break;
 case 129:
  acer_gsensor_event();
  break;
 default:
  pr_warn("Unknown function number - %d - %d\n",
   return_value.function, return_value.key_num);
  break;
 }
}
