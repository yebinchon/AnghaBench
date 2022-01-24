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
struct vfio_dma {int /*<<< orphan*/  prot; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vfio_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_dma*,long,int) ; 

__attribute__((used)) static long FUNC3(struct vfio_dma *dma, dma_addr_t iova,
				    unsigned long pfn, long npage,
				    bool do_accounting)
{
	long unlocked = 0, locked = 0;
	long i;

	for (i = 0; i < npage; i++, iova += PAGE_SIZE) {
		if (FUNC0(pfn++, dma->prot)) {
			unlocked++;
			if (FUNC1(dma, iova))
				locked++;
		}
	}

	if (do_accounting)
		FUNC2(dma, locked - unlocked, true);

	return unlocked;
}