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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct smmu_pmu {scalar_t__ counter_mask; } ;
struct hw_perf_event {int /*<<< orphan*/  prev_count; int /*<<< orphan*/  idx; } ;
struct perf_event {int /*<<< orphan*/  count; int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct smmu_pmu*,int /*<<< orphan*/ ) ; 
 struct smmu_pmu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	struct smmu_pmu *smmu_pmu = FUNC4(event->pmu);
	u64 delta, prev, now;
	u32 idx = hwc->idx;

	do {
		prev = FUNC2(&hwc->prev_count);
		now = FUNC3(smmu_pmu, idx);
	} while (FUNC1(&hwc->prev_count, prev, now) != prev);

	/* handle overflow. */
	delta = now - prev;
	delta &= smmu_pmu->counter_mask;

	FUNC0(delta, &event->count);
}