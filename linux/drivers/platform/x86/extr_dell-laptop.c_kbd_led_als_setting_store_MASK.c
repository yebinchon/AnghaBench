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
typedef  int /*<<< orphan*/  u8 ;
struct kbd_state {int /*<<< orphan*/  als_setting; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct kbd_state*) ; 
 int /*<<< orphan*/  kbd_led_mutex ; 
 int FUNC1 (struct kbd_state*,struct kbd_state*) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t count)
{
	struct kbd_state state;
	struct kbd_state new_state;
	u8 setting;
	int ret;

	ret = FUNC2(buf, 10, &setting);
	if (ret)
		return ret;

	FUNC3(&kbd_led_mutex);

	ret = FUNC0(&state);
	if (ret)
		goto out;

	new_state = state;
	new_state.als_setting = setting;

	ret = FUNC1(&new_state, &state);
	if (ret)
		goto out;

	ret = count;
out:
	FUNC4(&kbd_led_mutex);
	return ret;
}