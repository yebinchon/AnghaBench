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
struct dcssblk_dev_info {int end; int start; } ;
typedef  long resource_size_t ;
typedef  unsigned long pgoff_t ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int PFN_DEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PFN_SPECIAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static long
FUNC2(struct dcssblk_dev_info *dev_info, pgoff_t pgoff,
		long nr_pages, void **kaddr, pfn_t *pfn)
{
	resource_size_t offset = pgoff * PAGE_SIZE;
	unsigned long dev_sz;

	dev_sz = dev_info->end - dev_info->start + 1;
	if (kaddr)
		*kaddr = (void *) dev_info->start + offset;
	if (pfn)
		*pfn = FUNC1(FUNC0(dev_info->start + offset),
				PFN_DEV|PFN_SPECIAL);

	return (dev_sz - offset) / PAGE_SIZE;
}