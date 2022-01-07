
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACERWMID_EVENT_GUID ;
 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_THREEG ;
 int ACER_CAP_WIRELESS ;
 int acer_rfkill_work ;
 int bluetooth_rfkill ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ ec_raw_mode ;
 scalar_t__ has_cap (int) ;
 int rfkill_destroy (int ) ;
 int rfkill_unregister (int ) ;
 int threeg_rfkill ;
 int wireless_rfkill ;
 int wmi_has_guid (int ) ;

__attribute__((used)) static void acer_rfkill_exit(void)
{
 if ((ec_raw_mode || !wmi_has_guid(ACERWMID_EVENT_GUID)) &&
     has_cap(ACER_CAP_WIRELESS | ACER_CAP_BLUETOOTH | ACER_CAP_THREEG))
  cancel_delayed_work_sync(&acer_rfkill_work);

 if (has_cap(ACER_CAP_WIRELESS)) {
  rfkill_unregister(wireless_rfkill);
  rfkill_destroy(wireless_rfkill);
 }

 if (has_cap(ACER_CAP_BLUETOOTH)) {
  rfkill_unregister(bluetooth_rfkill);
  rfkill_destroy(bluetooth_rfkill);
 }

 if (has_cap(ACER_CAP_THREEG)) {
  rfkill_unregister(threeg_rfkill);
  rfkill_destroy(threeg_rfkill);
 }
 return;
}
