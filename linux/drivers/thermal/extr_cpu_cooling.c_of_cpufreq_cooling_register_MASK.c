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
typedef  int /*<<< orphan*/  u32 ;
struct thermal_cooling_device {int dummy; } ;
struct device_node {int dummy; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct thermal_cooling_device*) ; 
 struct thermal_cooling_device* FUNC2 (struct device_node*,struct cpufreq_policy*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 

struct thermal_cooling_device *
FUNC8(struct cpufreq_policy *policy)
{
	struct device_node *np = FUNC4(policy->cpu, NULL);
	struct thermal_cooling_device *cdev = NULL;
	u32 capacitance = 0;

	if (!np) {
		FUNC7("cpu_cooling: OF node not available for cpu%d\n",
		       policy->cpu);
		return NULL;
	}

	if (FUNC3(np, "#cooling-cells", NULL)) {
		FUNC6(np, "dynamic-power-coefficient",
				     &capacitance);

		cdev = FUNC2(np, policy, capacitance);
		if (FUNC0(cdev)) {
			FUNC7("cpu_cooling: cpu%d failed to register as cooling device: %ld\n",
			       policy->cpu, FUNC1(cdev));
			cdev = NULL;
		}
	}

	FUNC5(np);
	return cdev;
}