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
typedef  scalar_t__ u64 ;
struct reada_zone {scalar_t__ elems; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; struct btrfs_device* device; } ;
struct btrfs_key {int dummy; } ;
struct reada_extent {int refcnt; int nzones; struct reada_zone** zones; int /*<<< orphan*/  lock; int /*<<< orphan*/  extctl; struct btrfs_key top; scalar_t__ logical; } ;
struct TYPE_4__ {int /*<<< orphan*/  rwsem; struct btrfs_device* tgtdev; } ;
struct btrfs_fs_info {scalar_t__ nodesize; int /*<<< orphan*/  reada_lock; TYPE_2__ dev_replace; int /*<<< orphan*/  reada_tree; } ;
struct btrfs_device {int /*<<< orphan*/  reada_extents; int /*<<< orphan*/  bdev; } ;
struct btrfs_bio {scalar_t__ num_stripes; int num_tgtdevs; TYPE_1__* stripes; } ;
struct TYPE_3__ {struct btrfs_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_MAP_GET_READ_MIRRORS ; 
 scalar_t__ BTRFS_MAX_MIRRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ PAGE_SHIFT ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,char*,scalar_t__) ; 
 int FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,struct btrfs_bio**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct reada_extent*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct reada_extent* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC12 (int /*<<< orphan*/ *,unsigned long,struct reada_extent*) ; 
 struct reada_extent* FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 struct reada_zone* FUNC16 (struct btrfs_device*,scalar_t__,struct btrfs_bio*) ; 
 int /*<<< orphan*/  reada_zone_release ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct reada_extent *FUNC21(struct btrfs_fs_info *fs_info,
					      u64 logical,
					      struct btrfs_key *top)
{
	int ret;
	struct reada_extent *re = NULL;
	struct reada_extent *re_exist = NULL;
	struct btrfs_bio *bbio = NULL;
	struct btrfs_device *dev;
	struct btrfs_device *prev_dev;
	u64 length;
	int real_stripes;
	int nzones = 0;
	unsigned long index = logical >> PAGE_SHIFT;
	int dev_replace_is_ongoing;
	int have_zone = 0;

	FUNC17(&fs_info->reada_lock);
	re = FUNC13(&fs_info->reada_tree, index);
	if (re)
		re->refcnt++;
	FUNC19(&fs_info->reada_lock);

	if (re)
		return re;

	re = FUNC10(sizeof(*re), GFP_KERNEL);
	if (!re)
		return NULL;

	re->logical = logical;
	re->top = *top;
	FUNC1(&re->extctl);
	FUNC18(&re->lock);
	re->refcnt = 1;

	/*
	 * map block
	 */
	length = fs_info->nodesize;
	ret = FUNC4(fs_info, BTRFS_MAP_GET_READ_MIRRORS, logical,
			&length, &bbio, 0);
	if (ret || !bbio || length < fs_info->nodesize)
		goto error;

	if (bbio->num_stripes > BTRFS_MAX_MIRRORS) {
		FUNC3(fs_info,
			   "readahead: more than %d copies not supported",
			   BTRFS_MAX_MIRRORS);
		goto error;
	}

	real_stripes = bbio->num_stripes - bbio->num_tgtdevs;
	for (nzones = 0; nzones < real_stripes; ++nzones) {
		struct reada_zone *zone;

		dev = bbio->stripes[nzones].dev;

		/* cannot read ahead on missing device. */
		if (!dev->bdev)
			continue;

		zone = FUNC16(dev, logical, bbio);
		if (!zone)
			continue;

		re->zones[re->nzones++] = zone;
		FUNC17(&zone->lock);
		if (!zone->elems)
			FUNC8(&zone->refcnt);
		++zone->elems;
		FUNC19(&zone->lock);
		FUNC17(&fs_info->reada_lock);
		FUNC9(&zone->refcnt, reada_zone_release);
		FUNC19(&fs_info->reada_lock);
	}
	if (re->nzones == 0) {
		/* not a single zone found, error and out */
		goto error;
	}

	/* Insert extent in reada tree + all per-device trees, all or nothing */
	FUNC6(&fs_info->dev_replace.rwsem);
	ret = FUNC14(GFP_KERNEL);
	if (ret) {
		FUNC20(&fs_info->dev_replace.rwsem);
		goto error;
	}

	FUNC17(&fs_info->reada_lock);
	ret = FUNC12(&fs_info->reada_tree, index, re);
	if (ret == -EEXIST) {
		re_exist = FUNC13(&fs_info->reada_tree, index);
		re_exist->refcnt++;
		FUNC19(&fs_info->reada_lock);
		FUNC15();
		FUNC20(&fs_info->dev_replace.rwsem);
		goto error;
	}
	if (ret) {
		FUNC19(&fs_info->reada_lock);
		FUNC15();
		FUNC20(&fs_info->dev_replace.rwsem);
		goto error;
	}
	FUNC15();
	prev_dev = NULL;
	dev_replace_is_ongoing = FUNC2(
			&fs_info->dev_replace);
	for (nzones = 0; nzones < re->nzones; ++nzones) {
		dev = re->zones[nzones]->device;

		if (dev == prev_dev) {
			/*
			 * in case of DUP, just add the first zone. As both
			 * are on the same device, there's nothing to gain
			 * from adding both.
			 * Also, it wouldn't work, as the tree is per device
			 * and adding would fail with EEXIST
			 */
			continue;
		}
		if (!dev->bdev)
			continue;

		if (dev_replace_is_ongoing &&
		    dev == fs_info->dev_replace.tgtdev) {
			/*
			 * as this device is selected for reading only as
			 * a last resort, skip it for read ahead.
			 */
			continue;
		}
		prev_dev = dev;
		ret = FUNC12(&dev->reada_extents, index, re);
		if (ret) {
			while (--nzones >= 0) {
				dev = re->zones[nzones]->device;
				FUNC0(dev == NULL);
				/* ignore whether the entry was inserted */
				FUNC11(&dev->reada_extents, index);
			}
			FUNC11(&fs_info->reada_tree, index);
			FUNC19(&fs_info->reada_lock);
			FUNC20(&fs_info->dev_replace.rwsem);
			goto error;
		}
		have_zone = 1;
	}
	FUNC19(&fs_info->reada_lock);
	FUNC20(&fs_info->dev_replace.rwsem);

	if (!have_zone)
		goto error;

	FUNC5(bbio);
	return re;

error:
	for (nzones = 0; nzones < re->nzones; ++nzones) {
		struct reada_zone *zone;

		zone = re->zones[nzones];
		FUNC8(&zone->refcnt);
		FUNC17(&zone->lock);
		--zone->elems;
		if (zone->elems == 0) {
			/*
			 * no fs_info->reada_lock needed, as this can't be
			 * the last ref
			 */
			FUNC9(&zone->refcnt, reada_zone_release);
		}
		FUNC19(&zone->lock);

		FUNC17(&fs_info->reada_lock);
		FUNC9(&zone->refcnt, reada_zone_release);
		FUNC19(&fs_info->reada_lock);
	}
	FUNC5(bbio);
	FUNC7(re);
	return re_exist;
}