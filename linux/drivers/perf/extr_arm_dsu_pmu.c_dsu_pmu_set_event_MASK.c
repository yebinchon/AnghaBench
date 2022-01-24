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
struct TYPE_4__ {int idx; int /*<<< orphan*/  config_base; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__* pmu; } ;
struct dsu_pmu {int /*<<< orphan*/  pmu_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsu_pmu*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(struct dsu_pmu *dsu_pmu,
					struct perf_event *event)
{
	int idx = event->hw.idx;
	unsigned long flags;

	if (!FUNC2(dsu_pmu, idx)) {
		FUNC1(event->pmu->dev,
			"Trying to set invalid counter %d\n", idx);
		return;
	}

	FUNC3(&dsu_pmu->pmu_lock, flags);
	FUNC0(idx, event->hw.config_base);
	FUNC4(&dsu_pmu->pmu_lock, flags);
}