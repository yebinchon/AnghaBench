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
struct clock_cooling_device {unsigned long clock_state; unsigned long clock_val; int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC2 (struct clock_cooling_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct clock_cooling_device *ccdev,
			       unsigned long cooling_state)
{
	unsigned long clip_freq, cur_freq;
	int ret = 0;

	/* Here we write the clipping */
	/* Check if the old cooling action is same as new cooling action */
	if (ccdev->clock_state == cooling_state)
		return 0;

	clip_freq = FUNC2(ccdev, cooling_state);
	if (!clip_freq)
		return -EINVAL;

	cur_freq = FUNC0(ccdev->clk);

	FUNC3(&ccdev->lock);
	ccdev->clock_state = cooling_state;
	ccdev->clock_val = clip_freq;
	/* enforce clock level */
	if (cur_freq > clip_freq)
		ret = FUNC1(ccdev->clk, clip_freq);
	FUNC4(&ccdev->lock);

	return ret;
}