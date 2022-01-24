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
typedef  int /*<<< orphan*/  u32 ;
struct smmu_pmu {int counter_mask; scalar_t__ reloc_base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct smmu_pmu *smmu_pmu,
					      u32 idx, u64 value)
{
	if (smmu_pmu->counter_mask & FUNC0(32))
		FUNC3(value, smmu_pmu->reloc_base + FUNC1(idx, 8));
	else
		FUNC2(value, smmu_pmu->reloc_base + FUNC1(idx, 4));
}