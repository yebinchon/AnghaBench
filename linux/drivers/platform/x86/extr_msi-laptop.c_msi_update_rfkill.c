
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int bluetooth_s ;
 int get_wireless_state_ec_standard () ;
 int msi_rfkill_set_state (scalar_t__,int) ;
 scalar_t__ rfk_bluetooth ;
 scalar_t__ rfk_threeg ;
 scalar_t__ rfk_wlan ;
 int threeg_s ;
 int wlan_s ;

__attribute__((used)) static void msi_update_rfkill(struct work_struct *ignored)
{
 get_wireless_state_ec_standard();

 if (rfk_wlan)
  msi_rfkill_set_state(rfk_wlan, !wlan_s);
 if (rfk_bluetooth)
  msi_rfkill_set_state(rfk_bluetooth, !bluetooth_s);
 if (rfk_threeg)
  msi_rfkill_set_state(rfk_threeg, !threeg_s);
}
