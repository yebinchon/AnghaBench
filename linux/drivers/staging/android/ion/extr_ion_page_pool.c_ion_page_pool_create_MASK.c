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
struct ion_page_pool {int gfp_mask; unsigned int order; int /*<<< orphan*/  list; int /*<<< orphan*/  mutex; int /*<<< orphan*/  high_items; int /*<<< orphan*/  low_items; scalar_t__ low_count; scalar_t__ high_count; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int __GFP_COMP ; 
 struct ion_page_pool* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

struct ion_page_pool *FUNC4(gfp_t gfp_mask, unsigned int order)
{
	struct ion_page_pool *pool = FUNC1(sizeof(*pool), GFP_KERNEL);

	if (!pool)
		return NULL;
	pool->high_count = 0;
	pool->low_count = 0;
	FUNC0(&pool->low_items);
	FUNC0(&pool->high_items);
	pool->gfp_mask = gfp_mask | __GFP_COMP;
	pool->order = order;
	FUNC2(&pool->mutex);
	FUNC3(&pool->list, order);

	return pool;
}