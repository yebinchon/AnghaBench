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
typedef  int /*<<< orphan*/  u64 ;
struct smmu_pmu {scalar_t__ reloc_base; scalar_t__ reg_base; int /*<<< orphan*/  pmu; scalar_t__ num_counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ SMMU_PMCG_CNTENCLR0 ; 
 scalar_t__ SMMU_PMCG_INTENCLR0 ; 
 scalar_t__ SMMU_PMCG_OVSCLR0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct smmu_pmu *smmu_pmu)
{
	u64 counter_present_mask = FUNC0(smmu_pmu->num_counters - 1, 0);

	FUNC1(&smmu_pmu->pmu);

	/* Disable counter and interrupt */
	FUNC2(counter_present_mask,
		       smmu_pmu->reg_base + SMMU_PMCG_CNTENCLR0);
	FUNC2(counter_present_mask,
		       smmu_pmu->reg_base + SMMU_PMCG_INTENCLR0);
	FUNC2(counter_present_mask,
		       smmu_pmu->reloc_base + SMMU_PMCG_OVSCLR0);
}