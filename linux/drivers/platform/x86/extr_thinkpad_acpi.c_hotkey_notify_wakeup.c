
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ TP_ACPI_WAKEUP_BAYEJ ;
 scalar_t__ TP_ACPI_WAKEUP_NONE ;
 scalar_t__ TP_ACPI_WAKEUP_UNDOCK ;






 scalar_t__ hotkey_wakeup_reason ;
 int hotkey_wakeup_reason_notify_change () ;
 int pr_alert (char*) ;
 int pr_info (char*) ;

__attribute__((used)) static bool hotkey_notify_wakeup(const u32 hkey,
     bool *send_acpi_ev,
     bool *ignore_acpi_ev)
{

 *send_acpi_ev = 1;
 *ignore_acpi_ev = 0;

 switch (hkey) {
 case 131:
 case 128:
  hotkey_wakeup_reason = TP_ACPI_WAKEUP_UNDOCK;
  *ignore_acpi_ev = 1;
  break;

 case 132:
 case 129:
  hotkey_wakeup_reason = TP_ACPI_WAKEUP_BAYEJ;
  *ignore_acpi_ev = 1;
  break;

 case 133:
 case 130:
  pr_alert("EMERGENCY WAKEUP: battery almost empty\n");



  break;

 default:
  return 0;
 }

 if (hotkey_wakeup_reason != TP_ACPI_WAKEUP_NONE) {
  pr_info("woke up due to a hot-unplug request...\n");
  hotkey_wakeup_reason_notify_change();
 }
 return 1;
}
