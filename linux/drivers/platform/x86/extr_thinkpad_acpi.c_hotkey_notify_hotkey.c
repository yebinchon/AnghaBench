
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int TPACPI_HOTKEY_MAP_LEN ;
 unsigned int TP_ACPI_HOTKEYSCAN_ADAPTIVE_START ;
 unsigned int TP_ACPI_HOTKEYSCAN_EXTENDED_START ;
 int adaptive_keyboard_hotkey_notify_hotkey (unsigned int) ;
 int hotkey_source_mask ;
 int tpacpi_input_send_key (unsigned int) ;
 int tpacpi_input_send_key_masked (unsigned int) ;

__attribute__((used)) static bool hotkey_notify_hotkey(const u32 hkey,
     bool *send_acpi_ev,
     bool *ignore_acpi_ev)
{

 unsigned int scancode = hkey & 0xfff;
 *send_acpi_ev = 1;
 *ignore_acpi_ev = 0;






 switch ((hkey >> 8) & 0xf) {
 case 0:
  if (scancode > 0 &&
      scancode <= TP_ACPI_HOTKEYSCAN_ADAPTIVE_START) {

   scancode--;
   if (!(hotkey_source_mask & (1 << scancode))) {
    tpacpi_input_send_key_masked(scancode);
    *send_acpi_ev = 0;
   } else {
    *ignore_acpi_ev = 1;
   }
   return 1;
  }
  break;

 case 1:
  return adaptive_keyboard_hotkey_notify_hotkey(scancode);

 case 3:




  scancode -= (0x300 - TP_ACPI_HOTKEYSCAN_EXTENDED_START);
  if (scancode >= TP_ACPI_HOTKEYSCAN_EXTENDED_START &&
      scancode < TPACPI_HOTKEY_MAP_LEN) {
   tpacpi_input_send_key(scancode);
   return 1;
  }
  break;
 }

 return 0;
}
