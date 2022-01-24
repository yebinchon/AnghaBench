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
struct kbd_state {int /*<<< orphan*/  mode_bit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int modes; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  KBD_MODE_BIT_ALS ; 
 int /*<<< orphan*/  KBD_MODE_BIT_ON ; 
 int /*<<< orphan*/  KBD_MODE_BIT_TRIGGER ; 
 int /*<<< orphan*/  KBD_MODE_BIT_TRIGGER_ALS ; 
 int FUNC1 (struct kbd_state*) ; 
 TYPE_1__ kbd_info ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kbd_led_mutex ; 
 int /*<<< orphan*/  kbd_previous_level ; 
 int /*<<< orphan*/  kbd_previous_mode_bit ; 
 int /*<<< orphan*/  FUNC4 (struct kbd_state*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct kbd_state*,struct kbd_state*) ; 
 scalar_t__ kbd_triggers_supported ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t count)
{
	struct kbd_state new_state;
	struct kbd_state state;
	bool triggers_enabled = false;
	int enable;
	int ret;

	ret = FUNC6(buf, 0, &enable);
	if (ret)
		return ret;

	FUNC7(&kbd_led_mutex);

	ret = FUNC1(&state);
	if (ret)
		goto out;

	if (enable == FUNC2(state.mode_bit)) {
		ret = count;
		goto out;
	}

	new_state = state;

	if (kbd_triggers_supported)
		triggers_enabled = FUNC3(state.mode_bit);

	if (enable) {
		if (triggers_enabled)
			new_state.mode_bit = KBD_MODE_BIT_TRIGGER_ALS;
		else
			new_state.mode_bit = KBD_MODE_BIT_ALS;
	} else {
		if (triggers_enabled) {
			new_state.mode_bit = KBD_MODE_BIT_TRIGGER;
			FUNC4(&new_state, kbd_previous_level);
		} else {
			new_state.mode_bit = KBD_MODE_BIT_ON;
		}
	}
	if (!(kbd_info.modes & FUNC0(new_state.mode_bit)))  {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC5(&new_state, &state);
	if (ret)
		goto out;
	kbd_previous_mode_bit = new_state.mode_bit;

	ret = count;
out:
	FUNC8(&kbd_led_mutex);
	return ret;
}