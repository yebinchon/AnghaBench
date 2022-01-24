#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct cw1200_queue {size_t num_queued; size_t num_pending; int /*<<< orphan*/  lock; scalar_t__* link_map_cache; TYPE_1__* stats; } ;
struct TYPE_2__ {size_t map_capacity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

size_t FUNC2(struct cw1200_queue *queue,
				   u32 link_id_map)
{
	size_t ret;
	int i, bit;
	size_t map_capacity = queue->stats->map_capacity;

	if (!link_id_map)
		return 0;

	FUNC0(&queue->lock);
	if (link_id_map == (u32)-1) {
		ret = queue->num_queued - queue->num_pending;
	} else {
		ret = 0;
		for (i = 0, bit = 1; i < map_capacity; ++i, bit <<= 1) {
			if (link_id_map & bit)
				ret += queue->link_map_cache[i];
		}
	}
	FUNC1(&queue->lock);
	return ret;
}