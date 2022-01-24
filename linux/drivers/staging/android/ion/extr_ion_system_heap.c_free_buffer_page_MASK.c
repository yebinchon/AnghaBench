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
struct ion_system_heap {struct ion_page_pool** pools; } ;
struct ion_page_pool {int dummy; } ;
struct ion_buffer {int private_flags; } ;

/* Variables and functions */
 int ION_PRIV_FLAG_SHRINKER_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned int) ; 
 unsigned int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct ion_page_pool*,struct page*) ; 
 size_t FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct ion_system_heap *heap,
			     struct ion_buffer *buffer, struct page *page)
{
	struct ion_page_pool *pool;
	unsigned int order = FUNC1(page);

	/* go to system */
	if (buffer->private_flags & ION_PRIV_FLAG_SHRINKER_FREE) {
		FUNC0(page, order);
		return;
	}

	pool = heap->pools[FUNC3(order)];

	FUNC2(pool, page);
}