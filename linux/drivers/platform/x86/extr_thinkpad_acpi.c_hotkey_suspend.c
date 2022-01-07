
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_adaptive_kbd; } ;


 int TP_ACPI_WAKEUP_NONE ;
 int acpi_evalf (int ,int *,char*,char*,int ) ;
 int adaptive_keyboard_prev_mode ;
 int hkey_handle ;
 scalar_t__ hotkey_autosleep_ack ;
 int hotkey_wakeup_reason ;
 int pr_err (char*) ;
 TYPE_1__ tp_features ;

__attribute__((used)) static void hotkey_suspend(void)
{

 hotkey_wakeup_reason = TP_ACPI_WAKEUP_NONE;
 hotkey_autosleep_ack = 0;


 if (tp_features.has_adaptive_kbd) {
  if (!acpi_evalf(hkey_handle, &adaptive_keyboard_prev_mode,
     "GTRW", "dd", 0)) {
   pr_err("Cannot read adaptive keyboard mode.\n");
  }
 }
}
