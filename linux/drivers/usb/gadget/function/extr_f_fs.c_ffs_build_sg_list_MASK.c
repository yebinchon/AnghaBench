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
struct sg_table {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (size_t) ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page**) ; 
 struct page** FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sg_table*,struct page**,unsigned int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (size_t) ; 
 struct page* FUNC6 (void*) ; 

__attribute__((used)) static void *FUNC7(struct sg_table *sgt, size_t sz)
{
	struct page **pages;
	void *vaddr, *ptr;
	unsigned int n_pages;
	int i;

	vaddr = FUNC5(sz);
	if (!vaddr)
		return NULL;

	n_pages = FUNC0(sz) >> PAGE_SHIFT;
	pages = FUNC2(n_pages, sizeof(struct page *), GFP_KERNEL);
	if (!pages) {
		FUNC4(vaddr);

		return NULL;
	}
	for (i = 0, ptr = vaddr; i < n_pages; ++i, ptr += PAGE_SIZE)
		pages[i] = FUNC6(ptr);

	if (FUNC3(sgt, pages, n_pages, 0, sz, GFP_KERNEL)) {
		FUNC1(pages);
		FUNC4(vaddr);

		return NULL;
	}
	FUNC1(pages);

	return vaddr;
}