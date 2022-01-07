
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct work_struct {int dummy; } ;
typedef int acpi_status ;
struct TYPE_2__ {int wireless; } ;


 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_THREEG ;
 int ACER_CAP_WIRELESS ;
 int ACER_WMID3_GDS_THREEG ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int HZ ;
 int WMID_GUID3 ;
 int acer_rfkill_work ;
 int bluetooth_rfkill ;
 int get_u32 (int *,int ) ;
 scalar_t__ has_cap (int ) ;
 TYPE_1__* quirks ;
 int rfkill_set_hw_state (int ,int) ;
 int rfkill_set_sw_state (int ,int) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int threeg_rfkill ;
 int wireless_rfkill ;
 scalar_t__ wmi_has_guid (int ) ;

__attribute__((used)) static void acer_rfkill_update(struct work_struct *ignored)
{
 u32 state;
 acpi_status status;

 if (has_cap(ACER_CAP_WIRELESS)) {
  status = get_u32(&state, ACER_CAP_WIRELESS);
  if (ACPI_SUCCESS(status)) {
   if (quirks->wireless == 3)
    rfkill_set_hw_state(wireless_rfkill, !state);
   else
    rfkill_set_sw_state(wireless_rfkill, !state);
  }
 }

 if (has_cap(ACER_CAP_BLUETOOTH)) {
  status = get_u32(&state, ACER_CAP_BLUETOOTH);
  if (ACPI_SUCCESS(status))
   rfkill_set_sw_state(bluetooth_rfkill, !state);
 }

 if (has_cap(ACER_CAP_THREEG) && wmi_has_guid(WMID_GUID3)) {
  status = get_u32(&state, ACER_WMID3_GDS_THREEG);
  if (ACPI_SUCCESS(status))
   rfkill_set_sw_state(threeg_rfkill, !state);
 }

 schedule_delayed_work(&acer_rfkill_work, round_jiffies_relative(HZ));
}
