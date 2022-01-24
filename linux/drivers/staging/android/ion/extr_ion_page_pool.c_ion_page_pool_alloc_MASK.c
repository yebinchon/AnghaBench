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
struct ion_page_pool {int /*<<< orphan*/  mutex; scalar_t__ low_count; scalar_t__ high_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct page* FUNC1 (struct ion_page_pool*) ; 
 struct page* FUNC2 (struct ion_page_pool*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct page *FUNC5(struct ion_page_pool *pool)
{
	struct page *page = NULL;

	FUNC0(!pool);

	FUNC3(&pool->mutex);
	if (pool->high_count)
		page = FUNC2(pool, true);
	else if (pool->low_count)
		page = FUNC2(pool, false);
	FUNC4(&pool->mutex);

	if (!page)
		page = FUNC1(pool);

	return page;
}