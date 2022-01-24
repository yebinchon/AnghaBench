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
struct scrub_page {int logical; int /*<<< orphan*/  page; } ;
struct TYPE_4__ {int /*<<< orphan*/  malloc_errors; } ;
struct scrub_ctx {int /*<<< orphan*/  stat_lock; TYPE_2__ stat; int /*<<< orphan*/  is_dev_replace; struct btrfs_fs_info* fs_info; } ;
struct scrub_block {int page_count; int /*<<< orphan*/  work; struct scrub_page** pagev; struct scrub_ctx* sctx; } ;
struct btrfs_raid_bio {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_bio {int map_type; int /*<<< orphan*/  raid_map; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct scrub_block* bi_private; TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_RAID56_MASK ; 
 int /*<<< orphan*/  BTRFS_MAP_GET_READ_MIRRORS ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bio* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int,int*,struct btrfs_bio**) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_bio*) ; 
 int /*<<< orphan*/  btrfs_scrub_helper ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_raid_bio*,int /*<<< orphan*/ ,int) ; 
 struct btrfs_raid_bio* FUNC9 (struct btrfs_fs_info*,struct bio*,struct btrfs_bio*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct scrub_block*) ; 
 int /*<<< orphan*/  scrub_missing_raid56_end_io ; 
 int /*<<< orphan*/  scrub_missing_raid56_worker ; 
 int /*<<< orphan*/  FUNC12 (struct scrub_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct scrub_block *sblock)
{
	struct scrub_ctx *sctx = sblock->sctx;
	struct btrfs_fs_info *fs_info = sctx->fs_info;
	u64 length = sblock->page_count * PAGE_SIZE;
	u64 logical = sblock->pagev[0]->logical;
	struct btrfs_bio *bbio = NULL;
	struct bio *bio;
	struct btrfs_raid_bio *rbio;
	int ret;
	int i;

	FUNC3(fs_info);
	ret = FUNC6(fs_info, BTRFS_MAP_GET_READ_MIRRORS, logical,
			&length, &bbio);
	if (ret || !bbio || !bbio->raid_map)
		goto bbio_out;

	if (FUNC0(!sctx->is_dev_replace ||
		    !(bbio->map_type & BTRFS_BLOCK_GROUP_RAID56_MASK))) {
		/*
		 * We shouldn't be scrubbing a missing device. Even for dev
		 * replace, we should only get here for RAID 5/6. We either
		 * managed to mount something with no mirrors remaining or
		 * there's a bug in scrub_remap_extent()/btrfs_map_block().
		 */
		goto bbio_out;
	}

	bio = FUNC5(0);
	bio->bi_iter.bi_sector = logical >> 9;
	bio->bi_private = sblock;
	bio->bi_end_io = scrub_missing_raid56_end_io;

	rbio = FUNC9(fs_info, bio, bbio, length);
	if (!rbio)
		goto rbio_out;

	for (i = 0; i < sblock->page_count; i++) {
		struct scrub_page *spage = sblock->pagev[i];

		FUNC8(rbio, spage->page, spage->logical);
	}

	FUNC4(&sblock->work, btrfs_scrub_helper,
			scrub_missing_raid56_worker, NULL, NULL);
	FUNC11(sblock);
	FUNC12(sctx);
	FUNC10(rbio);
	return;

rbio_out:
	FUNC1(bio);
bbio_out:
	FUNC2(fs_info);
	FUNC7(bbio);
	FUNC13(&sctx->stat_lock);
	sctx->stat.malloc_errors++;
	FUNC14(&sctx->stat_lock);
}