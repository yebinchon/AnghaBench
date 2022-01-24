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
struct smmu_pmu {int /*<<< orphan*/  used_counters; int /*<<< orphan*/ ** events; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct smmu_pmu*,int) ; 
 struct smmu_pmu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;
	struct smmu_pmu *smmu_pmu = FUNC4(event->pmu);
	int idx = hwc->idx;

	FUNC2(event, flags | PERF_EF_UPDATE);
	FUNC3(smmu_pmu, idx);
	smmu_pmu->events[idx] = NULL;
	FUNC0(idx, smmu_pmu->used_counters);

	FUNC1(event);
}