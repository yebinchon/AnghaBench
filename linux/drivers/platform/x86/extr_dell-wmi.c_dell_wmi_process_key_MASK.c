#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wmi_device {int /*<<< orphan*/  dev; } ;
struct key_entry {scalar_t__ keycode; } ;
struct dell_wmi_priv {int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELL_LAPTOP_KBD_BACKLIGHT_BRIGHTNESS_CHANGED ; 
 scalar_t__ KEY_BRIGHTNESSDOWN ; 
 scalar_t__ KEY_BRIGHTNESSUP ; 
 scalar_t__ KEY_KBDILLUMTOGGLE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dell_wmi_priv* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 struct key_entry* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct key_entry const*,int,int) ; 
 int /*<<< orphan*/  wmi_requires_smbios_request ; 

__attribute__((used)) static void FUNC7(struct wmi_device *wdev, int type, int code)
{
	struct dell_wmi_priv *priv = FUNC2(&wdev->dev);
	const struct key_entry *key;

	key = FUNC5(priv->input_dev,
						(type << 16) | code);
	if (!key) {
		FUNC4("Unknown key with type 0x%04x and code 0x%04x pressed\n",
			type, code);
		return;
	}

	FUNC3("Key with type 0x%04x and code 0x%04x pressed\n", type, code);

	/* Don't report brightness notifications that will also come via ACPI */
	if ((key->keycode == KEY_BRIGHTNESSUP ||
	     key->keycode == KEY_BRIGHTNESSDOWN) &&
	    FUNC0())
		return;

	if (type == 0x0000 && code == 0xe025 && !wmi_requires_smbios_request)
		return;

	if (key->keycode == KEY_KBDILLUMTOGGLE)
		FUNC1(
			DELL_LAPTOP_KBD_BACKLIGHT_BRIGHTNESS_CHANGED, NULL);

	FUNC6(priv->input_dev, key, 1, true);
}