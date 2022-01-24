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
typedef  int /*<<< orphan*/  (* xen_gfn_fn_t ) (int /*<<< orphan*/ ,void*) ;
struct page {int dummy; } ;

/* Variables and functions */
 int XEN_PFN_PER_PAGE ; 
 unsigned long FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct page **pages, unsigned nr_gfn,
			     xen_gfn_fn_t fn, void *data)
{
	unsigned long xen_pfn = 0;
	struct page *page;
	int i;

	for (i = 0; i < nr_gfn; i++) {
		if ((i % XEN_PFN_PER_PAGE) == 0) {
			page = pages[i / XEN_PFN_PER_PAGE];
			xen_pfn = FUNC0(page);
		}
		fn(FUNC1(xen_pfn++), data);
	}
}