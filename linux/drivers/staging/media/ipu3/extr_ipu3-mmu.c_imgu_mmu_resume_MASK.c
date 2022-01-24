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
struct imgu_mmu_info {int dummy; } ;
struct imgu_mmu {scalar_t__ base; int /*<<< orphan*/  l1pt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_L1_PHYS ; 
 int /*<<< orphan*/  FUNC1 (struct imgu_mmu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct imgu_mmu*) ; 
 struct imgu_mmu* FUNC3 (struct imgu_mmu_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(struct imgu_mmu_info *info)
{
	struct imgu_mmu *mmu = FUNC3(info);
	u32 pteval;

	FUNC1(mmu, true);

	pteval = FUNC0(FUNC4(mmu->l1pt));
	FUNC5(pteval, mmu->base + REG_L1_PHYS);

	FUNC2(mmu);
	FUNC1(mmu, false);
}