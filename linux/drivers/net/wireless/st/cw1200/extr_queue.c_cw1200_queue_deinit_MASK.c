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
struct cw1200_queue {scalar_t__ capacity; int /*<<< orphan*/ * link_map_cache; int /*<<< orphan*/ * pool; int /*<<< orphan*/  free_pool; int /*<<< orphan*/  gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cw1200_queue *queue)
{
	FUNC1(queue);
	FUNC2(&queue->gc);
	FUNC0(&queue->free_pool);
	FUNC3(queue->pool);
	FUNC3(queue->link_map_cache);
	queue->pool = NULL;
	queue->link_map_cache = NULL;
	queue->capacity = 0;
}