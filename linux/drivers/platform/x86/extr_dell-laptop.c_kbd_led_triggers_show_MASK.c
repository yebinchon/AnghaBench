#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kbd_state {int triggers; int /*<<< orphan*/  mode_bit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int triggers; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct kbd_state*) ; 
 int FUNC3 (struct kbd_state*) ; 
 TYPE_1__ kbd_info ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char** kbd_led_triggers ; 
 scalar_t__ kbd_triggers_supported ; 
 scalar_t__ FUNC5 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct kbd_state state;
	bool triggers_enabled;
	int level, i, ret;
	int len = 0;

	ret = FUNC3(&state);
	if (ret)
		return ret;

	len = 0;

	if (kbd_triggers_supported) {
		triggers_enabled = FUNC4(state.mode_bit);
		level = FUNC2(&state);
		for (i = 0; i < FUNC0(kbd_led_triggers); ++i) {
			if (!(kbd_info.triggers & FUNC1(i)))
				continue;
			if (!kbd_led_triggers[i])
				continue;
			if ((triggers_enabled || level <= 0) &&
			    (state.triggers & FUNC1(i)))
				buf[len++] = '+';
			else
				buf[len++] = '-';
			len += FUNC5(buf+len, "%s ", kbd_led_triggers[i]);
		}
	}

	if (len)
		buf[len - 1] = '\n';

	return len;
}