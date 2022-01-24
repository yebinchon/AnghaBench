#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct tx2_uncore_pmu {int cpu; int name; TYPE_1__ pmu; int /*<<< orphan*/  dev; int /*<<< orphan*/  entry; int /*<<< orphan*/  hpnode; TYPE_2__ hrtimer; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE ; 
 int ENODEV ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx2_hrtimer_callback ; 
 int /*<<< orphan*/  tx2_pmus ; 
 int FUNC7 (struct tx2_uncore_pmu*) ; 

__attribute__((used)) static int FUNC8(struct tx2_uncore_pmu *tx2_pmu)
{
	int ret, cpu;

	cpu = FUNC1(FUNC2(tx2_pmu->node),
			cpu_online_mask);

	tx2_pmu->cpu = cpu;
	FUNC5(&tx2_pmu->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	tx2_pmu->hrtimer.function = tx2_hrtimer_callback;

	ret = FUNC7(tx2_pmu);
	if (ret) {
		FUNC4(tx2_pmu->dev, "%s PMU: Failed to init driver\n",
				tx2_pmu->name);
		return -ENODEV;
	}

	/* register hotplug callback for the pmu */
	ret = FUNC0(
			CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE,
			&tx2_pmu->hpnode);
	if (ret) {
		FUNC4(tx2_pmu->dev, "Error %d registering hotplug", ret);
		return ret;
	}

	/* Add to list */
	FUNC6(&tx2_pmu->entry, &tx2_pmus);

	FUNC3(tx2_pmu->dev, "%s PMU UNCORE registered\n",
			tx2_pmu->pmu.name);
	return ret;
}