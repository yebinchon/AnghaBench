#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  config; } ;
struct TYPE_6__ {int /*<<< orphan*/  config_base; } ;
struct perf_event {int attach_state; TYPE_3__ attr; TYPE_2__ hw; int /*<<< orphan*/  cpu; TYPE_4__* pmu; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct dsu_pmu {int /*<<< orphan*/  active_cpu; TYPE_1__ pmu; int /*<<< orphan*/  associated_cpus; } ;
struct TYPE_8__ {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int PERF_ATTACH_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 scalar_t__ FUNC4 (struct perf_event*) ; 
 scalar_t__ FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  nr_cpu_ids ; 
 struct dsu_pmu* FUNC6 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC7(struct perf_event *event)
{
	struct dsu_pmu *dsu_pmu = FUNC6(event->pmu);

	if (event->attr.type != event->pmu->type)
		return -ENOENT;

	/* We don't support sampling */
	if (FUNC5(event)) {
		FUNC2(dsu_pmu->pmu.dev, "Can't support sampling events\n");
		return -EOPNOTSUPP;
	}

	/* We cannot support task bound events */
	if (event->cpu < 0 || event->attach_state & PERF_ATTACH_TASK) {
		FUNC2(dsu_pmu->pmu.dev, "Can't support per-task counters\n");
		return -EINVAL;
	}

	if (FUNC4(event)) {
		FUNC2(dsu_pmu->pmu.dev, "Can't support filtering\n");
		return -EINVAL;
	}

	if (!FUNC1(event->cpu, &dsu_pmu->associated_cpus)) {
		FUNC2(dsu_pmu->pmu.dev,
			 "Requested cpu is not associated with the DSU\n");
		return -EINVAL;
	}
	/*
	 * Choose the current active CPU to read the events. We don't want
	 * to migrate the event contexts, irq handling etc to the requested
	 * CPU. As long as the requested CPU is within the same DSU, we
	 * are fine.
	 */
	event->cpu = FUNC0(&dsu_pmu->active_cpu);
	if (event->cpu >= nr_cpu_ids)
		return -EINVAL;
	if (!FUNC3(event))
		return -EINVAL;

	event->hw.config_base = event->attr.config;
	return 0;
}