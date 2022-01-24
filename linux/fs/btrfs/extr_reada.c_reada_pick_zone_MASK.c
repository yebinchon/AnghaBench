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
typedef  scalar_t__ u64 ;
struct reada_zone {int end; scalar_t__ elems; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  start; scalar_t__ locked; } ;
struct btrfs_device {struct reada_zone* reada_curr_zone; int /*<<< orphan*/  reada_next; int /*<<< orphan*/  reada_zones; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,void**,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct reada_zone*,int) ; 
 int /*<<< orphan*/  reada_zone_release ; 

__attribute__((used)) static int FUNC4(struct btrfs_device *dev)
{
	struct reada_zone *top_zone = NULL;
	struct reada_zone *top_locked_zone = NULL;
	u64 top_elems = 0;
	u64 top_locked_elems = 0;
	unsigned long index = 0;
	int ret;

	if (dev->reada_curr_zone) {
		FUNC3(dev->reada_curr_zone, 0);
		FUNC1(&dev->reada_curr_zone->refcnt, reada_zone_release);
		dev->reada_curr_zone = NULL;
	}
	/* pick the zone with the most elements */
	while (1) {
		struct reada_zone *zone;

		ret = FUNC2(&dev->reada_zones,
					     (void **)&zone, index, 1);
		if (ret == 0)
			break;
		index = (zone->end >> PAGE_SHIFT) + 1;
		if (zone->locked) {
			if (zone->elems > top_locked_elems) {
				top_locked_elems = zone->elems;
				top_locked_zone = zone;
			}
		} else {
			if (zone->elems > top_elems) {
				top_elems = zone->elems;
				top_zone = zone;
			}
		}
	}
	if (top_zone)
		dev->reada_curr_zone = top_zone;
	else if (top_locked_zone)
		dev->reada_curr_zone = top_locked_zone;
	else
		return 0;

	dev->reada_next = dev->reada_curr_zone->start;
	FUNC0(&dev->reada_curr_zone->refcnt);
	FUNC3(dev->reada_curr_zone, 1);

	return 1;
}