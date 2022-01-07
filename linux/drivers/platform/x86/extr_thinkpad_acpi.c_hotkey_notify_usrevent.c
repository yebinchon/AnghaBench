
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int hotkey_tablet_mode_notify_change () ;
 int tpacpi_input_send_tabletsw () ;

__attribute__((used)) static bool hotkey_notify_usrevent(const u32 hkey,
     bool *send_acpi_ev,
     bool *ignore_acpi_ev)
{

 *send_acpi_ev = 1;
 *ignore_acpi_ev = 0;

 switch (hkey) {
 case 131:
 case 130:
  return 1;

 case 128:
 case 129:
  tpacpi_input_send_tabletsw();
  hotkey_tablet_mode_notify_change();
  *send_acpi_ev = 0;
  return 1;

 case 133:
 case 132:
 case 134:

  *ignore_acpi_ev = 1;
  return 1;

 default:
  return 0;
 }
}
