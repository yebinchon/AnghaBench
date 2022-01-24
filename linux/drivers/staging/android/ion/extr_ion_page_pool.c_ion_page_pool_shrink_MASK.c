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
struct ion_page_pool {int order; int /*<<< orphan*/  mutex; scalar_t__ high_count; scalar_t__ low_count; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_HIGHMEM ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ion_page_pool*,struct page*) ; 
 struct page* FUNC2 (struct ion_page_pool*,int) ; 
 int FUNC3 (struct ion_page_pool*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ion_page_pool *pool, gfp_t gfp_mask,
			 int nr_to_scan)
{
	int freed = 0;
	bool high;

	if (FUNC0())
		high = true;
	else
		high = !!(gfp_mask & __GFP_HIGHMEM);

	if (nr_to_scan == 0)
		return FUNC3(pool, high);

	while (freed < nr_to_scan) {
		struct page *page;

		FUNC4(&pool->mutex);
		if (pool->low_count) {
			page = FUNC2(pool, false);
		} else if (high && pool->high_count) {
			page = FUNC2(pool, true);
		} else {
			FUNC5(&pool->mutex);
			break;
		}
		FUNC5(&pool->mutex);
		FUNC1(pool, page);
		freed += (1 << pool->order);
	}

	return freed;
}