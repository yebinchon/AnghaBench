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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(phys_addr_t p, size_t size)
{
	unsigned long next_bfn, xen_pfn = FUNC0(p);
	unsigned int i, nr_pages = FUNC1(FUNC3(p) + size);

	next_bfn = FUNC2(xen_pfn);

	for (i = 1; i < nr_pages; i++)
		if (FUNC2(++xen_pfn) != ++next_bfn)
			return 1;

	return 0;
}