
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





 int hotkey_autosleep_ack ;
 int hotkey_wakeup_hotunplug_complete_notify_change () ;
 int pr_info (char*) ;

__attribute__((used)) static bool hotkey_notify_dockevent(const u32 hkey,
     bool *send_acpi_ev,
     bool *ignore_acpi_ev)
{

 *send_acpi_ev = 1;
 *ignore_acpi_ev = 0;

 switch (hkey) {
 case 128:

  hotkey_autosleep_ack = 1;
  pr_info("undocked\n");
  hotkey_wakeup_hotunplug_complete_notify_change();
  return 1;

 case 130:
  pr_info("docked into hotplug port replicator\n");
  return 1;
 case 129:
  pr_info("undocked from hotplug port replicator\n");
  return 1;

 default:
  return 0;
 }
}
