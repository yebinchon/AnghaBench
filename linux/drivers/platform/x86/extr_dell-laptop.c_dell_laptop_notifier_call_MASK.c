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
struct notifier_block {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
#define  DELL_LAPTOP_KBD_BACKLIGHT_BRIGHTNESS_CHANGED 128 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  kbd_led ; 
 int kbd_led_level ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kbd_led_mutex ; 
 int /*<<< orphan*/  kbd_led_present ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb,
				     unsigned long action, void *data)
{
	bool changed = false;
	enum led_brightness new_kbd_led_level;

	switch (action) {
	case DELL_LAPTOP_KBD_BACKLIGHT_BRIGHTNESS_CHANGED:
		if (!kbd_led_present)
			break;

		FUNC2(&kbd_led_mutex);
		new_kbd_led_level = FUNC0(&kbd_led);
		if (kbd_led_level != new_kbd_led_level) {
			kbd_led_level = new_kbd_led_level;
			changed = true;
		}
		FUNC3(&kbd_led_mutex);

		if (changed)
			FUNC1(&kbd_led,
								kbd_led_level);
		break;
	}

	return NOTIFY_OK;
}