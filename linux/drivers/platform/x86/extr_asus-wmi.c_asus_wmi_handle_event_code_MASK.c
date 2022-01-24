#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ max_brightness; } ;
struct asus_wmi {scalar_t__ kbd_led_wk; int fnlock_locked; int /*<<< orphan*/  inputdev; TYPE_3__* driver; scalar_t__ fan_boost_mode_available; TYPE_1__ kbd_led; } ;
struct TYPE_6__ {TYPE_2__* quirks; int /*<<< orphan*/  (* key_filter ) (TYPE_3__*,int*,unsigned int*,int*) ;} ;
struct TYPE_5__ {scalar_t__ no_display_toggle; } ;

/* Variables and functions */
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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct asus_wmi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC3 (struct asus_wmi*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct asus_wmi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int*,unsigned int*,int*) ; 

__attribute__((used)) static void FUNC9(int code, struct asus_wmi *asus)
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
		if (FUNC0() == acpi_backlight_vendor) {
			FUNC1(asus, orig_code);
			return;
		}
	}

	if (code == NOTIFY_KBD_BRTUP) {
		FUNC5(asus, asus->kbd_led_wk + 1);
		return;
	}
	if (code == NOTIFY_KBD_BRTDWN) {
		FUNC5(asus, asus->kbd_led_wk - 1);
		return;
	}
	if (code == NOTIFY_KBD_BRTTOGGLE) {
		if (asus->kbd_led_wk == asus->kbd_led.max_brightness)
			FUNC5(asus, 0);
		else
			FUNC5(asus, asus->kbd_led_wk + 1);
		return;
	}

	if (code == NOTIFY_FNLOCK_TOGGLE) {
		asus->fnlock_locked = !asus->fnlock_locked;
		FUNC2(asus);
		return;
	}

	if (asus->fan_boost_mode_available && code == NOTIFY_KBD_FBM) {
		FUNC3(asus);
		return;
	}

	if (FUNC4(code) && asus->driver->quirks->no_display_toggle)
		return;

	if (!FUNC7(asus->inputdev, code,
					key_value, autorelease))
		FUNC6("Unknown key %x pressed\n", code);
}