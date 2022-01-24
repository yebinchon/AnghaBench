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
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int* backlight_map ; 
 int FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct backlight_device *bd)
{
	int level, err, ret;

	/* Instance 1 is "get backlight", cmp with DSDT */
	err = FUNC1(1, &ret);
	if (err) {
		FUNC3("Could not query backlight: %d\n", err);
		return -EINVAL;
	}
	FUNC2("Get: Query block returned: %d\n", ret);
	for (level = 0; level < FUNC0(backlight_map); level++) {
		if (backlight_map[level] == ret) {
			FUNC2("Current backlight level: 0x%X - index: %d\n",
				 backlight_map[level], level);
			break;
		}
	}
	if (level == FUNC0(backlight_map)) {
		FUNC3("get: Invalid brightness value: 0x%X\n", ret);
		return -EINVAL;
	}
	return level;
}