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
struct idle_inject_device {int /*<<< orphan*/  timer; int /*<<< orphan*/  cpumask; int /*<<< orphan*/  run_duration_us; int /*<<< orphan*/  idle_duration_us; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 unsigned int NSEC_PER_USEC ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct idle_inject_device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct idle_inject_device *ii_dev)
{
	unsigned int idle_duration_us = FUNC0(ii_dev->idle_duration_us);
	unsigned int run_duration_us = FUNC0(ii_dev->run_duration_us);

	if (!idle_duration_us || !run_duration_us)
		return -EINVAL;

	FUNC5("Starting injecting idle cycles on CPUs '%*pbl'\n",
		 FUNC1(FUNC6(ii_dev->cpumask)));

	FUNC3(ii_dev);

	FUNC2(&ii_dev->timer,
		      FUNC4((idle_duration_us + run_duration_us) *
				  NSEC_PER_USEC),
		      HRTIMER_MODE_REL);

	return 0;
}