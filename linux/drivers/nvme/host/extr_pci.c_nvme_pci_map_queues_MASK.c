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
struct nvme_dev {int /*<<< orphan*/  dev; scalar_t__* io_queues; } ;
struct blk_mq_tag_set {int nr_maps; struct blk_mq_queue_map* map; struct nvme_dev* driver_data; } ;
struct blk_mq_queue_map {int queue_offset; scalar_t__ nr_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HCTX_TYPE_DEFAULT ; 
 int HCTX_TYPE_POLL ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_queue_map*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_mq_queue_map*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct blk_mq_tag_set *set)
{
	struct nvme_dev *dev = set->driver_data;
	int i, qoff, offset;

	offset = FUNC3(dev);
	for (i = 0, qoff = 0; i < set->nr_maps; i++) {
		struct blk_mq_queue_map *map = &set->map[i];

		map->nr_queues = dev->io_queues[i];
		if (!map->nr_queues) {
			FUNC0(i == HCTX_TYPE_DEFAULT);
			continue;
		}

		/*
		 * The poll queue(s) doesn't have an IRQ (and hence IRQ
		 * affinity), so use the regular blk-mq cpu mapping
		 */
		map->queue_offset = qoff;
		if (i != HCTX_TYPE_POLL && offset)
			FUNC2(map, FUNC4(dev->dev), offset);
		else
			FUNC1(map);
		qoff += map->nr_queues;
		offset += map->nr_queues;
	}

	return 0;
}