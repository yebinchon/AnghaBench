
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int hotkey_tablet_mode_notify_change () ;
 int pr_alert (char*) ;
 int pr_crit (char*) ;
 int pr_debug (char*) ;
 int thermal_dump_all_sensors () ;
 int tpacpi_input_send_tabletsw () ;

__attribute__((used)) static bool hotkey_notify_6xxx(const u32 hkey,
     bool *send_acpi_ev,
     bool *ignore_acpi_ev)
{

 *send_acpi_ev = 1;
 *ignore_acpi_ev = 0;

 switch (hkey) {
 case 129:
  pr_debug("EC reports: Thermal Table has changed\n");


  return 1;
 case 130:
  pr_debug("EC reports: Thermal Control Command set completed (DYTC)\n");


  return 1;
 case 128:
  pr_debug("EC reports: Thermal Transformation changed (GMTS)\n");


  return 1;
 case 140:
  pr_crit("THERMAL ALARM: battery is too hot!\n");

  break;
 case 139:
  pr_alert("THERMAL EMERGENCY: battery is extremely hot!\n");

  break;
 case 138:
  pr_crit("THERMAL ALARM: a sensor reports something is too hot!\n");


  break;
 case 137:
  pr_alert("THERMAL EMERGENCY: a sensor reports something is extremely hot!\n");

  break;
 case 141:






 case 134:
 case 136:
 case 135:


  *send_acpi_ev = 0;
  *ignore_acpi_ev = 1;
  return 1;

 case 131:
  tpacpi_input_send_tabletsw();
  hotkey_tablet_mode_notify_change();
  *send_acpi_ev = 0;
  return 1;

 case 133:
 case 132:


  return 1;

 default:

  return 0;
 }

 thermal_dump_all_sensors();
 return 1;
}
