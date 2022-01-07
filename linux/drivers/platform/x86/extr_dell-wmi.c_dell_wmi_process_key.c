
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_device {int dev; } ;
struct key_entry {scalar_t__ keycode; } ;
struct dell_wmi_priv {int input_dev; } ;


 int DELL_LAPTOP_KBD_BACKLIGHT_BRIGHTNESS_CHANGED ;
 scalar_t__ KEY_BRIGHTNESSDOWN ;
 scalar_t__ KEY_BRIGHTNESSUP ;
 scalar_t__ KEY_KBDILLUMTOGGLE ;
 scalar_t__ acpi_video_handles_brightness_key_presses () ;
 int dell_laptop_call_notifier (int ,int *) ;
 struct dell_wmi_priv* dev_get_drvdata (int *) ;
 int pr_debug (char*,int,int) ;
 int pr_info (char*,int,int) ;
 struct key_entry* sparse_keymap_entry_from_scancode (int ,int) ;
 int sparse_keymap_report_entry (int ,struct key_entry const*,int,int) ;
 int wmi_requires_smbios_request ;

__attribute__((used)) static void dell_wmi_process_key(struct wmi_device *wdev, int type, int code)
{
 struct dell_wmi_priv *priv = dev_get_drvdata(&wdev->dev);
 const struct key_entry *key;

 key = sparse_keymap_entry_from_scancode(priv->input_dev,
      (type << 16) | code);
 if (!key) {
  pr_info("Unknown key with type 0x%04x and code 0x%04x pressed\n",
   type, code);
  return;
 }

 pr_debug("Key with type 0x%04x and code 0x%04x pressed\n", type, code);


 if ((key->keycode == KEY_BRIGHTNESSUP ||
      key->keycode == KEY_BRIGHTNESSDOWN) &&
     acpi_video_handles_brightness_key_presses())
  return;

 if (type == 0x0000 && code == 0xe025 && !wmi_requires_smbios_request)
  return;

 if (key->keycode == KEY_KBDILLUMTOGGLE)
  dell_laptop_call_notifier(
   DELL_LAPTOP_KBD_BACKLIGHT_BRIGHTNESS_CHANGED, ((void*)0));

 sparse_keymap_report_entry(priv->input_dev, key, 1, 1);
}
