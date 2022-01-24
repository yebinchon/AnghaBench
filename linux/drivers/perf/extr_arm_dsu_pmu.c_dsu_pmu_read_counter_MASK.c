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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int idx; } ;
struct perf_event {TYPE_2__* pmu; TYPE_1__ hw; } ;
struct dsu_pmu {int /*<<< orphan*/  pmu_lock; int /*<<< orphan*/  associated_cpus; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DSU_PMU_IDX_CYCLE_COUNTER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dsu_pmu*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct dsu_pmu* FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static inline u64 FUNC10(struct perf_event *event)
{
	u64 val;
	unsigned long flags;
	struct dsu_pmu *dsu_pmu = FUNC9(event->pmu);
	int idx = event->hw.idx;

	if (FUNC0(!FUNC3(FUNC8(),
				 &dsu_pmu->associated_cpus)))
		return 0;

	if (!FUNC5(dsu_pmu, idx)) {
		FUNC4(event->pmu->dev,
			"Trying reading invalid counter %d\n", idx);
		return 0;
	}

	FUNC6(&dsu_pmu->pmu_lock, flags);
	if (idx == DSU_PMU_IDX_CYCLE_COUNTER)
		val = FUNC2();
	else
		val = FUNC1(idx);
	FUNC7(&dsu_pmu->pmu_lock, flags);

	return val;
}