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
typedef  int u16 ;
struct led_classdev {int dummy; } ;
struct kbd_state {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct kbd_state*) ; 
 scalar_t__ FUNC3 () ; 
 int kbd_led_level ; 
 int /*<<< orphan*/  kbd_led_mutex ; 
 int FUNC4 (struct kbd_state*,int) ; 
 int FUNC5 (struct kbd_state*,struct kbd_state*) ; 
 int FUNC6 (scalar_t__) ; 
 int kbd_token_bits ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct led_classdev *led_cdev,
			     enum led_brightness value)
{
	enum led_brightness new_value = value;
	struct kbd_state state;
	struct kbd_state new_state;
	u16 num;
	int ret;

	FUNC7(&kbd_led_mutex);

	if (FUNC1()) {
		ret = FUNC2(&state);
		if (ret)
			goto out;
		new_state = state;
		ret = FUNC4(&new_state, value);
		if (ret)
			goto out;
		ret = FUNC5(&new_state, &state);
	} else if (FUNC3()) {
		for (num = kbd_token_bits; num != 0 && value > 0; --value)
			num &= num - 1; /* clear the first bit set */
		if (num == 0)
			ret = 0;
		else
			ret = FUNC6(FUNC0(num) - 1);
	} else {
		FUNC9("Keyboard brightness level control not supported\n");
		ret = -ENXIO;
	}

out:
	if (ret == 0)
		kbd_led_level = new_value;

	FUNC8(&kbd_led_mutex);
	return ret;
}