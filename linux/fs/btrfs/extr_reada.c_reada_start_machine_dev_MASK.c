#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct reada_extent {int logical; int scheduled; int nzones; TYPE_2__** zones; int /*<<< orphan*/  lock; int /*<<< orphan*/  extctl; int /*<<< orphan*/  refcnt; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int nodesize; int /*<<< orphan*/  reada_lock; } ;
struct btrfs_device {int reada_next; int /*<<< orphan*/  reada_in_flight; int /*<<< orphan*/  reada_extents; TYPE_1__* reada_curr_zone; struct btrfs_fs_info* fs_info; } ;
struct TYPE_4__ {struct btrfs_device* device; } ;
struct TYPE_3__ {int end; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,struct reada_extent*,struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,void**,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,struct reada_extent*) ; 
 int FUNC7 (struct btrfs_device*) ; 
 int FUNC8 (struct btrfs_fs_info*,int,int,struct extent_buffer**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct btrfs_device *dev)
{
	struct btrfs_fs_info *fs_info = dev->fs_info;
	struct reada_extent *re = NULL;
	int mirror_num = 0;
	struct extent_buffer *eb = NULL;
	u64 logical;
	int ret;
	int i;

	FUNC9(&fs_info->reada_lock);
	if (dev->reada_curr_zone == NULL) {
		ret = FUNC7(dev);
		if (!ret) {
			FUNC10(&fs_info->reada_lock);
			return 0;
		}
	}
	/*
	 * FIXME currently we issue the reads one extent at a time. If we have
	 * a contiguous block of extents, we could also coagulate them or use
	 * plugging to speed things up
	 */
	ret = FUNC5(&dev->reada_extents, (void **)&re,
				     dev->reada_next >> PAGE_SHIFT, 1);
	if (ret == 0 || re->logical > dev->reada_curr_zone->end) {
		ret = FUNC7(dev);
		if (!ret) {
			FUNC10(&fs_info->reada_lock);
			return 0;
		}
		re = NULL;
		ret = FUNC5(&dev->reada_extents, (void **)&re,
					dev->reada_next >> PAGE_SHIFT, 1);
	}
	if (ret == 0) {
		FUNC10(&fs_info->reada_lock);
		return 0;
	}
	dev->reada_next = re->logical + fs_info->nodesize;
	re->refcnt++;

	FUNC10(&fs_info->reada_lock);

	FUNC9(&re->lock);
	if (re->scheduled || FUNC4(&re->extctl)) {
		FUNC10(&re->lock);
		FUNC6(fs_info, re);
		return 0;
	}
	re->scheduled = 1;
	FUNC10(&re->lock);

	/*
	 * find mirror num
	 */
	for (i = 0; i < re->nzones; ++i) {
		if (re->zones[i]->device == dev) {
			mirror_num = i + 1;
			break;
		}
	}
	logical = re->logical;

	FUNC2(&dev->reada_in_flight);
	ret = FUNC8(fs_info, logical, mirror_num, &eb);
	if (ret)
		FUNC0(fs_info, re, NULL, ret);
	else if (eb)
		FUNC0(fs_info, re, eb, ret);

	if (eb)
		FUNC3(eb);

	FUNC1(&dev->reada_in_flight);
	FUNC6(fs_info, re);

	return 1;

}