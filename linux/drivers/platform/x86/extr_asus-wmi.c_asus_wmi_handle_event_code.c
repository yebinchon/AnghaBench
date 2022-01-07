
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ max_brightness; } ;
struct asus_wmi {scalar_t__ kbd_led_wk; int fnlock_locked; int inputdev; TYPE_3__* driver; scalar_t__ fan_boost_mode_available; TYPE_1__ kbd_led; } ;
struct TYPE_6__ {TYPE_2__* quirks; int (* key_filter ) (TYPE_3__*,int*,unsigned int*,int*) ;} ;
struct TYPE_5__ {scalar_t__ no_display_toggle; } ;


 int ASUS_WMI_BRN_DOWN ;
 int ASUS_WMI_BRN_UP ;
 int ASUS_WMI_KEY_IGNORE ;
 int NOTIFY_BRNDOWN_MAX ;
 int NOTIFY_BRNDOWN_MIN ;
 int NOTIFY_BRNUP_MAX ;
 int NOTIFY_BRNUP_MIN ;
 int NOTIFY_FNLOCK_TOGGLE ;
 int NOTIFY_KBD_BRTDWN ;
 int NOTIFY_KBD_BRTTOGGLE ;
 int NOTIFY_KBD_BRTUP ;
 int NOTIFY_KBD_FBM ;
 scalar_t__ acpi_backlight_vendor ;
 scalar_t__ acpi_video_get_backlight_type () ;
 int asus_wmi_backlight_notify (struct asus_wmi*,int) ;
 int asus_wmi_fnlock_update (struct asus_wmi*) ;
 int fan_boost_mode_switch_next (struct asus_wmi*) ;
 scalar_t__ is_display_toggle (int) ;
 int kbd_led_set_by_kbd (struct asus_wmi*,scalar_t__) ;
 int pr_info (char*,int) ;
 int sparse_keymap_report_event (int ,int,unsigned int,int) ;
 int stub1 (TYPE_3__*,int*,unsigned int*,int*) ;

__attribute__((used)) static void asus_wmi_handle_event_code(int code, struct asus_wmi *asus)
{
 int orig_code;
 unsigned int key_value = 1;
 bool autorelease = 1;

 orig_code = code;

 if (asus->driver->key_filter) {
  asus->driver->key_filter(asus->driver, &code, &key_value,
      &autorelease);
  if (code == ASUS_WMI_KEY_IGNORE)
   return;
 }

 if (code >= NOTIFY_BRNUP_MIN && code <= NOTIFY_BRNUP_MAX)
  code = ASUS_WMI_BRN_UP;
 else if (code >= NOTIFY_BRNDOWN_MIN && code <= NOTIFY_BRNDOWN_MAX)
  code = ASUS_WMI_BRN_DOWN;

 if (code == ASUS_WMI_BRN_DOWN || code == ASUS_WMI_BRN_UP) {
  if (acpi_video_get_backlight_type() == acpi_backlight_vendor) {
   asus_wmi_backlight_notify(asus, orig_code);
   return;
  }
 }

 if (code == NOTIFY_KBD_BRTUP) {
  kbd_led_set_by_kbd(asus, asus->kbd_led_wk + 1);
  return;
 }
 if (code == NOTIFY_KBD_BRTDWN) {
  kbd_led_set_by_kbd(asus, asus->kbd_led_wk - 1);
  return;
 }
 if (code == NOTIFY_KBD_BRTTOGGLE) {
  if (asus->kbd_led_wk == asus->kbd_led.max_brightness)
   kbd_led_set_by_kbd(asus, 0);
  else
   kbd_led_set_by_kbd(asus, asus->kbd_led_wk + 1);
  return;
 }

 if (code == NOTIFY_FNLOCK_TOGGLE) {
  asus->fnlock_locked = !asus->fnlock_locked;
  asus_wmi_fnlock_update(asus);
  return;
 }

 if (asus->fan_boost_mode_available && code == NOTIFY_KBD_FBM) {
  fan_boost_mode_switch_next(asus);
  return;
 }

 if (is_display_toggle(code) && asus->driver->quirks->no_display_toggle)
  return;

 if (!sparse_keymap_report_event(asus->inputdev, code,
     key_value, autorelease))
  pr_info("Unknown key %x pressed\n", code);
}
