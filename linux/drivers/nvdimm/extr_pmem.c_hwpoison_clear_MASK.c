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
struct pmem_device {int /*<<< orphan*/  virt_addr; } ;
struct page {int dummy; } ;
typedef  unsigned int phys_addr_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(struct pmem_device *pmem,
		phys_addr_t phys, unsigned int len)
{
	unsigned long pfn_start, pfn_end, pfn;

	/* only pmem in the linear map supports HWPoison */
	if (FUNC2(pmem->virt_addr))
		return;

	pfn_start = FUNC0(phys);
	pfn_end = pfn_start + FUNC0(len);
	for (pfn = pfn_start; pfn < pfn_end; pfn++) {
		struct page *page = FUNC3(pfn);

		/*
		 * Note, no need to hold a get_dev_pagemap() reference
		 * here since we're in the driver I/O path and
		 * outstanding I/O requests pin the dev_pagemap.
		 */
		if (FUNC4(page))
			FUNC1(pfn);
	}
}