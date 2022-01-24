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
struct thermal_cooling_device {int dummy; } ;

/* Variables and functions */
 int MAX_TARGET_RATIO ; 
 unsigned long FUNC0 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned long set_target_ratio ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct thermal_cooling_device *cdev,
				 unsigned long new_target_ratio)
{
	int ret = 0;

	new_target_ratio = FUNC0(new_target_ratio, 0UL,
				(unsigned long) (MAX_TARGET_RATIO-1));
	if (set_target_ratio == 0 && new_target_ratio > 0) {
		FUNC2("Start idle injection to reduce power\n");
		set_target_ratio = new_target_ratio;
		ret = FUNC4();
		goto exit_set;
	} else	if (set_target_ratio > 0 && new_target_ratio == 0) {
		FUNC2("Stop forced idle injection\n");
		FUNC1();
		set_target_ratio = 0;
	} else	/* adjust currently running */ {
		set_target_ratio = new_target_ratio;
		/* make new set_target_ratio visible to other cpus */
		FUNC3();
	}

exit_set:
	return ret;
}