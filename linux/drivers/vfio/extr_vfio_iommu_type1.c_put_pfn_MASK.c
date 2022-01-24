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
struct page {int dummy; } ;

/* Variables and functions */
 int IOMMU_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct page* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(unsigned long pfn, int prot)
{
	if (!FUNC1(pfn)) {
		struct page *page = FUNC2(pfn);
		if (prot & IOMMU_WRITE)
			FUNC0(page);
		FUNC3(page);
		return 1;
	}
	return 0;
}