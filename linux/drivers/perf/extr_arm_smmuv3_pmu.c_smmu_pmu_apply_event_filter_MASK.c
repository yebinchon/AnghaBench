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
struct smmu_pmu {unsigned int num_counters; int /*<<< orphan*/ * events; int /*<<< orphan*/  used_counters; int /*<<< orphan*/  global_filter; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  SMMU_PMCG_DEFAULT_FILTER_SID ; 
 int /*<<< orphan*/  SMMU_PMCG_DEFAULT_FILTER_SPAN ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct smmu_pmu *smmu_pmu,
				       struct perf_event *event, int idx)
{
	u32 span, sid;
	unsigned int num_ctrs = smmu_pmu->num_counters;
	bool filter_en = !!FUNC1(event);

	span = filter_en ? FUNC2(event) :
			   SMMU_PMCG_DEFAULT_FILTER_SPAN;
	sid = filter_en ? FUNC3(event) :
			   SMMU_PMCG_DEFAULT_FILTER_SID;

	/* Support individual filter settings */
	if (!smmu_pmu->global_filter) {
		FUNC5(event, idx, span, sid);
		return 0;
	}

	/* Requested settings same as current global settings*/
	idx = FUNC0(smmu_pmu->used_counters, num_ctrs);
	if (idx == num_ctrs ||
	    FUNC4(smmu_pmu->events[idx], event)) {
		FUNC5(event, 0, span, sid);
		return 0;
	}

	return -EAGAIN;
}