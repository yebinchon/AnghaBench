#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thermal_cooling_device {struct cpufreq_cooling_device* devdata; } ;
struct cpufreq_cooling_device {unsigned long max_level; unsigned long cpufreq_state; TYPE_1__* freq_table; int /*<<< orphan*/  qos_req; } ;
struct TYPE_2__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct thermal_cooling_device *cdev,
				 unsigned long state)
{
	struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;

	/* Request state should be less than max_level */
	if (FUNC0(state > cpufreq_cdev->max_level))
		return -EINVAL;

	/* Check if the old cooling action is same as new cooling action */
	if (cpufreq_cdev->cpufreq_state == state)
		return 0;

	cpufreq_cdev->cpufreq_state = state;

	return FUNC1(&cpufreq_cdev->qos_req,
				cpufreq_cdev->freq_table[state].frequency);
}