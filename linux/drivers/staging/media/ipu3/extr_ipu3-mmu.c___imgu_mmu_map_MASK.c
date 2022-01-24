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
struct imgu_mmu {size_t dummy_page_pteval; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,size_t*,size_t*) ; 
 size_t* FUNC2 (struct imgu_mmu*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct imgu_mmu *mmu, unsigned long iova,
			  phys_addr_t paddr)
{
	u32 l1pt_idx, l2pt_idx;
	unsigned long flags;
	u32 *l2pt;

	if (!mmu)
		return -ENODEV;

	FUNC1(iova, &l1pt_idx, &l2pt_idx);

	l2pt = FUNC2(mmu, l1pt_idx);
	if (!l2pt)
		return -ENOMEM;

	FUNC3(&mmu->lock, flags);

	if (l2pt[l2pt_idx] != mmu->dummy_page_pteval) {
		FUNC4(&mmu->lock, flags);
		return -EBUSY;
	}

	l2pt[l2pt_idx] = FUNC0(paddr);

	FUNC4(&mmu->lock, flags);

	return 0;
}