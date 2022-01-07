
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rfk_bluetooth ;
 scalar_t__ rfk_threeg ;
 scalar_t__ rfk_wlan ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_unregister (scalar_t__) ;

__attribute__((used)) static void rfkill_cleanup(void)
{
 if (rfk_bluetooth) {
  rfkill_unregister(rfk_bluetooth);
  rfkill_destroy(rfk_bluetooth);
 }

 if (rfk_threeg) {
  rfkill_unregister(rfk_threeg);
  rfkill_destroy(rfk_threeg);
 }

 if (rfk_wlan) {
  rfkill_unregister(rfk_wlan);
  rfkill_destroy(rfk_wlan);
 }
}
