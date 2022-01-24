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
struct thermal_cooling_device {struct cpufreq_cooling_device* devdata; } ;
struct cpufreq_cooling_device {struct cpufreq_cooling_device* freq_table; struct cpufreq_cooling_device* idle_time; int /*<<< orphan*/  id; int /*<<< orphan*/  qos_req; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  cooling_list_lock ; 
 int /*<<< orphan*/  cpufreq_ida ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_cooling_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct thermal_cooling_device*) ; 

void FUNC7(struct thermal_cooling_device *cdev)
{
	struct cpufreq_cooling_device *cpufreq_cdev;

	if (!cdev)
		return;

	cpufreq_cdev = cdev->devdata;

	FUNC4(&cooling_list_lock);
	FUNC3(&cpufreq_cdev->node);
	FUNC5(&cooling_list_lock);

	FUNC6(cdev);
	FUNC0(&cpufreq_cdev->qos_req);
	FUNC1(&cpufreq_ida, cpufreq_cdev->id);
	FUNC2(cpufreq_cdev->idle_time);
	FUNC2(cpufreq_cdev->freq_table);
	FUNC2(cpufreq_cdev);
}