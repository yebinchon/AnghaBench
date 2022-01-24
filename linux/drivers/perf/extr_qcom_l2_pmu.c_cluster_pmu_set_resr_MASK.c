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
typedef  int u32 ;
struct cluster_pmu {int /*<<< orphan*/  pmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2PMRESR ; 
 int L2PMRESR_EN ; 
 int L2PMRESR_GROUP_BITS ; 
 int L2PMRESR_GROUP_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct cluster_pmu *cluster,
			       u32 event_group, u32 event_cc)
{
	u64 field;
	u64 resr_val;
	u32 shift;
	unsigned long flags;

	shift = L2PMRESR_GROUP_BITS * event_group;
	field = ((u64)(event_cc & L2PMRESR_GROUP_MASK) << shift);

	FUNC2(&cluster->pmu_lock, flags);

	resr_val = FUNC0(L2PMRESR);
	resr_val &= ~(L2PMRESR_GROUP_MASK << shift);
	resr_val |= field;
	resr_val |= L2PMRESR_EN;
	FUNC1(L2PMRESR, resr_val);

	FUNC3(&cluster->pmu_lock, flags);
}