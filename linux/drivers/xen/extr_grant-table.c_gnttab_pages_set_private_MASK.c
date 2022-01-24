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
struct xen_page_foreign {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct xen_page_foreign* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned long) ; 

int FUNC3(int nr_pages, struct page **pages)
{
	int i;

	for (i = 0; i < nr_pages; i++) {
#if BITS_PER_LONG < 64
		struct xen_page_foreign *foreign;

		foreign = FUNC1(sizeof(*foreign), GFP_KERNEL);
		if (!foreign)
			return -ENOMEM;

		FUNC2(pages[i], (unsigned long)foreign);
#endif
		FUNC0(pages[i]);
	}

	return 0;
}