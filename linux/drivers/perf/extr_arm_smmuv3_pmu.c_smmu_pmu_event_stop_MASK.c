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
struct smmu_pmu {int dummy; } ;
struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;

/* Variables and functions */
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct smmu_pmu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 struct smmu_pmu* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int flags)
{
	struct smmu_pmu *smmu_pmu = FUNC2(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	if (hwc->state & PERF_HES_STOPPED)
		return;

	FUNC0(smmu_pmu, idx);
	/* As the counter gets updated on _start, ignore PERF_EF_UPDATE */
	FUNC1(event);
	hwc->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
}