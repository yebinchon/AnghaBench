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
struct imgu_mmu_info {int dummy; } ;
struct imgu_mmu {scalar_t__ dummy_page; int /*<<< orphan*/  dummy_l2pt; int /*<<< orphan*/  l2pts; int /*<<< orphan*/  l1pt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imgu_mmu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct imgu_mmu*) ; 
 int /*<<< orphan*/  FUNC4 (struct imgu_mmu*) ; 
 struct imgu_mmu* FUNC5 (struct imgu_mmu_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct imgu_mmu_info *info)
{
	struct imgu_mmu *mmu = FUNC5(info);

	/* We are going to free our page tables, no more memory access. */
	FUNC2(mmu, true);
	FUNC3(mmu);

	FUNC1(mmu->l1pt);
	FUNC6(mmu->l2pts);
	FUNC1(mmu->dummy_l2pt);
	FUNC0((unsigned long)mmu->dummy_page);
	FUNC4(mmu);
}