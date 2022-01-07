
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_adaptive_kbd; } ;


 int acpi_evalf (int ,int *,char*,char*,int ) ;
 int adaptive_keyboard_prev_mode ;
 int hkey_handle ;
 int hotkey_acpi_mask ;
 scalar_t__ hotkey_mask_set (int ) ;
 int hotkey_poll_setup_safe (int) ;
 scalar_t__ hotkey_status_set (int) ;
 int hotkey_tablet_mode_notify_change () ;
 int hotkey_wakeup_hotunplug_complete_notify_change () ;
 int hotkey_wakeup_reason_notify_change () ;
 int pr_err (char*) ;
 TYPE_1__ tp_features ;
 int tpacpi_disable_brightness_delay () ;
 int tpacpi_send_radiosw_update () ;

__attribute__((used)) static void hotkey_resume(void)
{
 tpacpi_disable_brightness_delay();

 if (hotkey_status_set(1) < 0 ||
     hotkey_mask_set(hotkey_acpi_mask) < 0)
  pr_err("error while attempting to reset the event firmware interface\n");

 tpacpi_send_radiosw_update();
 hotkey_tablet_mode_notify_change();
 hotkey_wakeup_reason_notify_change();
 hotkey_wakeup_hotunplug_complete_notify_change();
 hotkey_poll_setup_safe(0);


 if (tp_features.has_adaptive_kbd) {
  if (!acpi_evalf(hkey_handle, ((void*)0), "STRW", "vd",
     adaptive_keyboard_prev_mode)) {
   pr_err("Cannot set adaptive keyboard mode.\n");
  }
 }
}
