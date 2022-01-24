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
typedef  int u32 ;
struct smmu_pmu {int dummy; } ;
struct perf_event {int /*<<< orphan*/  pmu; } ;

/* Variables and functions */
 int SMMU_PMCG_SID_SPAN_SHIFT ; 
 int FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct smmu_pmu*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct smmu_pmu*,int,int) ; 
 struct smmu_pmu* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event,
				      int idx, u32 span, u32 sid)
{
	struct smmu_pmu *smmu_pmu = FUNC3(event->pmu);
	u32 evtyper;

	evtyper = FUNC0(event) | span << SMMU_PMCG_SID_SPAN_SHIFT;
	FUNC1(smmu_pmu, idx, evtyper);
	FUNC2(smmu_pmu, idx, sid);
}