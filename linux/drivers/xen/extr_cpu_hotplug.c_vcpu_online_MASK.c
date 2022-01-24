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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	int err;
	char dir[16], state[16];

	FUNC1(dir, "cpu/%u", cpu);
	err = FUNC4(XBT_NIL, dir, "availability", "%15s", state);
	if (err != 1) {
		if (!FUNC3())
			FUNC0("Unable to read cpu state\n");
		return err;
	}

	if (FUNC2(state, "online") == 0)
		return 1;
	else if (FUNC2(state, "offline") == 0)
		return 0;

	FUNC0("unknown state(%s) on CPU%d\n", state, cpu);
	return -EINVAL;
}