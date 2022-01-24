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
struct kbd_state {int /*<<< orphan*/  mode_bit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct kbd_state*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct kbd_state state;
	bool enabled = false;
	int ret;

	ret = FUNC0(&state);
	if (ret)
		return ret;
	enabled = FUNC1(state.mode_bit);

	return FUNC2(buf, "%d\n", enabled ? 1 : 0);
}