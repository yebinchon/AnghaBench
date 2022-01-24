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
struct page {int /*<<< orphan*/  lru; } ;
struct ion_page_pool {int order; int /*<<< orphan*/  mutex; int /*<<< orphan*/  low_count; int /*<<< orphan*/  low_items; int /*<<< orphan*/  high_count; int /*<<< orphan*/  high_items; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_KERNEL_MISC_RECLAIMABLE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static void FUNC6(struct ion_page_pool *pool, struct page *page)
{
	FUNC3(&pool->mutex);
	if (FUNC0(page)) {
		FUNC1(&page->lru, &pool->high_items);
		pool->high_count++;
	} else {
		FUNC1(&page->lru, &pool->low_items);
		pool->low_count++;
	}

	FUNC2(FUNC5(page), NR_KERNEL_MISC_RECLAIMABLE,
							1 << pool->order);
	FUNC4(&pool->mutex);
}