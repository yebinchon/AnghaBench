#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct kbd_state {int timeout_value_ac; int timeout_unit_ac; int timeout_value; int timeout_unit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int seconds; int minutes; int hours; int days; } ;
struct TYPE_3__ {int* kbd_timeouts; scalar_t__ needs_kbd_timeouts; } ;

/* Variables and functions */
 int EINVAL ; 
#define  KBD_TIMEOUT_DAYS 130 
#define  KBD_TIMEOUT_HOURS 129 
#define  KBD_TIMEOUT_MINUTES 128 
 int KBD_TIMEOUT_SECONDS ; 
 int FUNC0 (struct kbd_state*) ; 
 TYPE_2__ kbd_info ; 
 int /*<<< orphan*/  kbd_led_mutex ; 
 int FUNC1 (struct kbd_state*,struct kbd_state*) ; 
 scalar_t__ kbd_timeout_ac_supported ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_1__* quirks ; 
 int FUNC5 (char const*,char*,int*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct kbd_state new_state;
	struct kbd_state state;
	bool convert;
	int value;
	int ret;
	char ch;
	u8 unit;
	int i;

	ret = FUNC5(buf, "%d %c", &value, &ch);
	if (ret < 1)
		return -EINVAL;
	else if (ret == 1)
		ch = 's';

	if (value < 0)
		return -EINVAL;

	convert = false;

	switch (ch) {
	case 's':
		if (value > kbd_info.seconds)
			convert = true;
		unit = KBD_TIMEOUT_SECONDS;
		break;
	case 'm':
		if (value > kbd_info.minutes)
			convert = true;
		unit = KBD_TIMEOUT_MINUTES;
		break;
	case 'h':
		if (value > kbd_info.hours)
			convert = true;
		unit = KBD_TIMEOUT_HOURS;
		break;
	case 'd':
		if (value > kbd_info.days)
			convert = true;
		unit = KBD_TIMEOUT_DAYS;
		break;
	default:
		return -EINVAL;
	}

	if (quirks && quirks->needs_kbd_timeouts)
		convert = true;

	if (convert) {
		/* Convert value from current units to seconds */
		switch (unit) {
		case KBD_TIMEOUT_DAYS:
			value *= 24;
			/* fall through */
		case KBD_TIMEOUT_HOURS:
			value *= 60;
			/* fall through */
		case KBD_TIMEOUT_MINUTES:
			value *= 60;
			unit = KBD_TIMEOUT_SECONDS;
		}

		if (quirks && quirks->needs_kbd_timeouts) {
			for (i = 0; quirks->kbd_timeouts[i] != -1; i++) {
				if (value <= quirks->kbd_timeouts[i]) {
					value = quirks->kbd_timeouts[i];
					break;
				}
			}
		}

		if (value <= kbd_info.seconds && kbd_info.seconds) {
			unit = KBD_TIMEOUT_SECONDS;
		} else if (value / 60 <= kbd_info.minutes && kbd_info.minutes) {
			value /= 60;
			unit = KBD_TIMEOUT_MINUTES;
		} else if (value / (60 * 60) <= kbd_info.hours && kbd_info.hours) {
			value /= (60 * 60);
			unit = KBD_TIMEOUT_HOURS;
		} else if (value / (60 * 60 * 24) <= kbd_info.days && kbd_info.days) {
			value /= (60 * 60 * 24);
			unit = KBD_TIMEOUT_DAYS;
		} else {
			return -EINVAL;
		}
	}

	FUNC2(&kbd_led_mutex);

	ret = FUNC0(&state);
	if (ret)
		goto out;

	new_state = state;

	if (kbd_timeout_ac_supported && FUNC4() > 0) {
		new_state.timeout_value_ac = value;
		new_state.timeout_unit_ac = unit;
	} else {
		new_state.timeout_value = value;
		new_state.timeout_unit = unit;
	}

	ret = FUNC1(&new_state, &state);
	if (ret)
		goto out;

	ret = count;
out:
	FUNC3(&kbd_led_mutex);
	return ret;
}