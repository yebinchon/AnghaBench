
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int bluetooth_s ;
 scalar_t__ rfk_bluetooth ;
 scalar_t__ rfk_threeg ;
 scalar_t__ rfk_wlan ;
 int rfkill_bluetooth_set (int *,int) ;
 int rfkill_set_sw_state (scalar_t__,int) ;
 int rfkill_threeg_set (int *,int) ;
 int rfkill_wlan_set (int *,int) ;
 int threeg_s ;
 int wlan_s ;

__attribute__((used)) static void msi_init_rfkill(struct work_struct *ignored)
{
 if (rfk_wlan) {
  rfkill_set_sw_state(rfk_wlan, !wlan_s);
  rfkill_wlan_set(((void*)0), !wlan_s);
 }
 if (rfk_bluetooth) {
  rfkill_set_sw_state(rfk_bluetooth, !bluetooth_s);
  rfkill_bluetooth_set(((void*)0), !bluetooth_s);
 }
 if (rfk_threeg) {
  rfkill_set_sw_state(rfk_threeg, !threeg_s);
  rfkill_threeg_set(((void*)0), !threeg_s);
 }
}
