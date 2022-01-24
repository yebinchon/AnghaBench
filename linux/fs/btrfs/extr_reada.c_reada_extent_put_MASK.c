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
struct reada_zone {scalar_t__ elems; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; TYPE_1__* device; } ;
struct reada_extent {unsigned long logical; int nzones; struct reada_zone** zones; scalar_t__ refcnt; } ;
struct btrfs_fs_info {int /*<<< orphan*/  reada_lock; int /*<<< orphan*/  reada_tree; } ;
struct TYPE_2__ {int /*<<< orphan*/  reada_extents; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct reada_extent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  reada_zone_release ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct btrfs_fs_info *fs_info,
			     struct reada_extent *re)
{
	int i;
	unsigned long index = re->logical >> PAGE_SHIFT;

	FUNC4(&fs_info->reada_lock);
	if (--re->refcnt) {
		FUNC5(&fs_info->reada_lock);
		return;
	}

	FUNC3(&fs_info->reada_tree, index);
	for (i = 0; i < re->nzones; ++i) {
		struct reada_zone *zone = re->zones[i];

		FUNC3(&zone->device->reada_extents, index);
	}

	FUNC5(&fs_info->reada_lock);

	for (i = 0; i < re->nzones; ++i) {
		struct reada_zone *zone = re->zones[i];

		FUNC1(&zone->refcnt);
		FUNC4(&zone->lock);
		--zone->elems;
		if (zone->elems == 0) {
			/* no fs_info->reada_lock needed, as this can't be
			 * the last ref */
			FUNC2(&zone->refcnt, reada_zone_release);
		}
		FUNC5(&zone->lock);

		FUNC4(&fs_info->reada_lock);
		FUNC2(&zone->refcnt, reada_zone_release);
		FUNC5(&fs_info->reada_lock);
	}

	FUNC0(re);
}