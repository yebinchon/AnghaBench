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
struct platform_device {int dummy; } ;
struct dsi_reg {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int FUNC0 (struct platform_device*,struct dsi_reg const,int,int) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline int FUNC6(struct platform_device *dsidev,
		const struct dsi_reg idx, int bitnum, int value)
{
	unsigned long timeout;
	ktime_t wait;
	int t;

	/* first busyloop to see if the bit changes right away */
	t = 100;
	while (t-- > 0) {
		if (FUNC0(dsidev, idx, bitnum, bitnum) == value)
			return value;
	}

	/* then loop for 500ms, sleeping for 1ms in between */
	timeout = jiffies + FUNC1(500);
	while (FUNC5(jiffies, timeout)) {
		if (FUNC0(dsidev, idx, bitnum, bitnum) == value)
			return value;

		wait = FUNC2(1000 * 1000);
		FUNC4(TASK_UNINTERRUPTIBLE);
		FUNC3(&wait, HRTIMER_MODE_REL);
	}

	return !value;
}