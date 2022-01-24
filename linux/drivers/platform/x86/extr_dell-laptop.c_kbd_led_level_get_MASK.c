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
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 (struct kbd_state*) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (struct kbd_state*) ; 
 scalar_t__ FUNC5 () ; 
 int kbd_token_bits ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static enum led_brightness FUNC7(struct led_classdev *led_cdev)
{
	int ret;
	u16 num;
	struct kbd_state state;

	if (FUNC3()) {
		ret = FUNC4(&state);
		if (ret)
			return 0;
		ret = FUNC2(&state);
		if (ret < 0)
			return 0;
		return ret;
	}

	if (FUNC5()) {
		ret = FUNC1();
		if (ret < 0)
			return 0;
		for (num = kbd_token_bits; num != 0 && ret > 0; --ret)
			num &= num - 1; /* clear the first bit set */
		if (num == 0)
			return 0;
		return FUNC0(num) - 1;
	}

	FUNC6("Keyboard brightness level control not supported\n");
	return 0;
}