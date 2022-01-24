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
struct scrub_parity {int logic_start; int /*<<< orphan*/  nsectors; int /*<<< orphan*/  dbitmap; int /*<<< orphan*/  ebitmap; int /*<<< orphan*/  scrub_dev; scalar_t__ logic_end; struct scrub_ctx* sctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  malloc_errors; } ;
struct scrub_ctx {int /*<<< orphan*/  stat_lock; TYPE_2__ stat; struct btrfs_fs_info* fs_info; } ;
struct btrfs_raid_bio {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_bio {int /*<<< orphan*/  raid_map; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct scrub_parity* bi_private; TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_MAP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*) ; 
 struct bio* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int,scalar_t__*,struct btrfs_bio**) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_bio*) ; 
 struct btrfs_raid_bio* FUNC8 (struct btrfs_fs_info*,struct bio*,struct btrfs_bio*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct scrub_parity*) ; 
 int /*<<< orphan*/  scrub_parity_bio_endio ; 
 int /*<<< orphan*/  FUNC11 (struct scrub_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct scrub_parity *sparity)
{
	struct scrub_ctx *sctx = sparity->sctx;
	struct btrfs_fs_info *fs_info = sctx->fs_info;
	struct bio *bio;
	struct btrfs_raid_bio *rbio;
	struct btrfs_bio *bbio = NULL;
	u64 length;
	int ret;

	if (!FUNC1(sparity->dbitmap, sparity->dbitmap, sparity->ebitmap,
			   sparity->nsectors))
		goto out;

	length = sparity->logic_end - sparity->logic_start;

	FUNC4(fs_info);
	ret = FUNC6(fs_info, BTRFS_MAP_WRITE, sparity->logic_start,
			       &length, &bbio);
	if (ret || !bbio || !bbio->raid_map)
		goto bbio_out;

	bio = FUNC5(0);
	bio->bi_iter.bi_sector = sparity->logic_start >> 9;
	bio->bi_private = sparity;
	bio->bi_end_io = scrub_parity_bio_endio;

	rbio = FUNC8(fs_info, bio, bbio,
					      length, sparity->scrub_dev,
					      sparity->dbitmap,
					      sparity->nsectors);
	if (!rbio)
		goto rbio_out;

	FUNC11(sctx);
	FUNC9(rbio);
	return;

rbio_out:
	FUNC0(bio);
bbio_out:
	FUNC3(fs_info);
	FUNC7(bbio);
	FUNC2(sparity->ebitmap, sparity->ebitmap, sparity->dbitmap,
		  sparity->nsectors);
	FUNC12(&sctx->stat_lock);
	sctx->stat.malloc_errors++;
	FUNC13(&sctx->stat_lock);
out:
	FUNC10(sparity);
}