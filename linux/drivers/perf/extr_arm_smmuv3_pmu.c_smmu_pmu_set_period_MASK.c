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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct smmu_pmu {int options; int counter_mask; } ;
struct hw_perf_event {int /*<<< orphan*/  prev_count; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int SMMU_PMCG_EVCNTR_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct smmu_pmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smmu_pmu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct smmu_pmu *smmu_pmu,
				struct hw_perf_event *hwc)
{
	u32 idx = hwc->idx;
	u64 new;

	if (smmu_pmu->options & SMMU_PMCG_EVCNTR_RDONLY) {
		/*
		 * On platforms that require this quirk, if the counter starts
		 * at < half_counter value and wraps, the current logic of
		 * handling the overflow may not work. It is expected that,
		 * those platforms will have full 64 counter bits implemented
		 * so that such a possibility is remote(eg: HiSilicon HIP08).
		 */
		new = FUNC1(smmu_pmu, idx);
	} else {
		/*
		 * We limit the max period to half the max counter value
		 * of the counter size, so that even in the case of extreme
		 * interrupt latency the counter will (hopefully) not wrap
		 * past its initial value.
		 */
		new = smmu_pmu->counter_mask >> 1;
		FUNC2(smmu_pmu, idx, new);
	}

	FUNC0(&hwc->prev_count, new);
}