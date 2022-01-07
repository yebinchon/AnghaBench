
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
typedef int u32 ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef scalar_t__ acpi_status ;
struct TYPE_7__ {int swbit; } ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ AE_OK ;



 int HPWMI_BLUETOOTH ;




 int HPWMI_DOCK_MASK ;
 int HPWMI_HOTKEY_QUERY ;







 int HPWMI_TABLET_MASK ;
 int HPWMI_WIFI ;

 int HPWMI_WWAN ;
 int SW_DOCK ;
 int SW_TABLET_MODE ;
 int bluetooth_rfkill ;
 int hp_wmi_get_hw_state (int ) ;
 int hp_wmi_get_sw_state (int ) ;
 int hp_wmi_hw_state (int ) ;
 TYPE_2__* hp_wmi_input_dev ;
 int hp_wmi_read_int (int ) ;
 int hp_wmi_rfkill2_refresh () ;
 int input_report_switch (TYPE_2__*,int ,int ) ;
 int input_sync (TYPE_2__*) ;
 int kfree (union acpi_object*) ;
 int pr_info (char*,...) ;
 int rfkill2_count ;
 int rfkill_set_states (int ,int ,int ) ;
 int sparse_keymap_report_event (TYPE_2__*,int,int,int) ;
 int test_bit (int ,int ) ;
 int wifi_rfkill ;
 scalar_t__ wmi_get_event_data (int,struct acpi_buffer*) ;
 int wwan_rfkill ;

__attribute__((used)) static void hp_wmi_notify(u32 value, void *context)
{
 struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 u32 event_id, event_data;
 union acpi_object *obj;
 acpi_status status;
 u32 *location;
 int key_code;

 status = wmi_get_event_data(value, &response);
 if (status != AE_OK) {
  pr_info("bad event status 0x%x\n", status);
  return;
 }

 obj = (union acpi_object *)response.pointer;

 if (!obj)
  return;
 if (obj->type != ACPI_TYPE_BUFFER) {
  pr_info("Unknown response received %d\n", obj->type);
  kfree(obj);
  return;
 }





 location = (u32 *)obj->buffer.pointer;
 if (obj->buffer.length == 8) {
  event_id = *location;
  event_data = *(location + 1);
 } else if (obj->buffer.length == 16) {
  event_id = *location;
  event_data = *(location + 2);
 } else {
  pr_info("Unknown buffer length %d\n", obj->buffer.length);
  kfree(obj);
  return;
 }
 kfree(obj);

 switch (event_id) {
 case 136:
  if (test_bit(SW_DOCK, hp_wmi_input_dev->swbit))
   input_report_switch(hp_wmi_input_dev, SW_DOCK,
         hp_wmi_hw_state(HPWMI_DOCK_MASK));
  if (test_bit(SW_TABLET_MODE, hp_wmi_input_dev->swbit))
   input_report_switch(hp_wmi_input_dev, SW_TABLET_MODE,
         hp_wmi_hw_state(HPWMI_TABLET_MASK));
  input_sync(hp_wmi_input_dev);
  break;
 case 133:
  break;
 case 129:
  break;
 case 140:
  key_code = hp_wmi_read_int(HPWMI_HOTKEY_QUERY);
  if (key_code < 0)
   break;

  if (!sparse_keymap_report_event(hp_wmi_input_dev,
      key_code, 1, 1))
   pr_info("Unknown key code - 0x%x\n", key_code);
  break;
 case 128:
  if (rfkill2_count) {
   hp_wmi_rfkill2_refresh();
   break;
  }

  if (wifi_rfkill)
   rfkill_set_states(wifi_rfkill,
       hp_wmi_get_sw_state(HPWMI_WIFI),
       hp_wmi_get_hw_state(HPWMI_WIFI));
  if (bluetooth_rfkill)
   rfkill_set_states(bluetooth_rfkill,
       hp_wmi_get_sw_state(HPWMI_BLUETOOTH),
       hp_wmi_get_hw_state(HPWMI_BLUETOOTH));
  if (wwan_rfkill)
   rfkill_set_states(wwan_rfkill,
       hp_wmi_get_sw_state(HPWMI_WWAN),
       hp_wmi_get_hw_state(HPWMI_WWAN));
  break;
 case 137:
  pr_info("Unimplemented CPU throttle because of 3 Cell battery event detected\n");
  break;
 case 134:
  break;
 case 135:
  break;
 case 130:
  break;
 case 138:
  break;
 case 139:
  break;
 case 131:
  break;
 case 142:
  break;
 case 132:
  break;
 case 141:
  break;
 default:
  pr_info("Unknown event_id - %d - 0x%x\n", event_id, event_data);
  break;
 }
}
