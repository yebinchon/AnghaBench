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
typedef  size_t u32 ;
struct imgu_mmu {size_t** l2pts; size_t* l1pt; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  dummy_page_pteval; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t*,size_t) ; 
 size_t* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (size_t*) ; 

__attribute__((used)) static u32 *FUNC7(struct imgu_mmu *mmu, u32 l1pt_idx)
{
	unsigned long flags;
	u32 *l2pt, *new_l2pt;
	u32 pteval;

	FUNC4(&mmu->lock, flags);

	l2pt = mmu->l2pts[l1pt_idx];
	if (l2pt)
		goto done;

	FUNC5(&mmu->lock, flags);

	new_l2pt = FUNC2(mmu->dummy_page_pteval);
	if (!new_l2pt)
		return NULL;

	FUNC4(&mmu->lock, flags);

	FUNC1(mmu->dev, "allocated page table %p for l1pt_idx %u\n",
		new_l2pt, l1pt_idx);

	l2pt = mmu->l2pts[l1pt_idx];
	if (l2pt) {
		FUNC3(new_l2pt);
		goto done;
	}

	l2pt = new_l2pt;
	mmu->l2pts[l1pt_idx] = new_l2pt;

	pteval = FUNC0(FUNC6(new_l2pt));
	mmu->l1pt[l1pt_idx] = pteval;

done:
	FUNC5(&mmu->lock, flags);
	return l2pt;
}