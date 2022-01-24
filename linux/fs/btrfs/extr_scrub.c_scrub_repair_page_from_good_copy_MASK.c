#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scrub_page {int physical; TYPE_4__* dev; int /*<<< orphan*/ * page; scalar_t__ io_error; } ;
struct scrub_block {scalar_t__ checksum_error; scalar_t__ header_error; TYPE_1__* sctx; struct scrub_page** pagev; } ;
struct TYPE_7__ {int /*<<< orphan*/  num_write_errors; } ;
struct btrfs_fs_info {TYPE_3__ dev_replace; } ;
struct TYPE_6__ {int bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_opf; TYPE_2__ bi_iter; } ;
struct TYPE_8__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_5__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DEV_STAT_WRITE_ERRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bio*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_fs_info*,char*) ; 
 scalar_t__ FUNC8 (struct bio*) ; 

__attribute__((used)) static int FUNC9(struct scrub_block *sblock_bad,
					    struct scrub_block *sblock_good,
					    int page_num, int force_write)
{
	struct scrub_page *page_bad = sblock_bad->pagev[page_num];
	struct scrub_page *page_good = sblock_good->pagev[page_num];
	struct btrfs_fs_info *fs_info = sblock_bad->sctx->fs_info;

	FUNC0(page_bad->page == NULL);
	FUNC0(page_good->page == NULL);
	if (force_write || sblock_bad->header_error ||
	    sblock_bad->checksum_error || page_bad->io_error) {
		struct bio *bio;
		int ret;

		if (!page_bad->dev->bdev) {
			FUNC7(fs_info,
				"scrub_repair_page_from_good_copy(bdev == NULL) is unexpected");
			return -EIO;
		}

		bio = FUNC6(1);
		FUNC4(bio, page_bad->dev->bdev);
		bio->bi_iter.bi_sector = page_bad->physical >> 9;
		bio->bi_opf = REQ_OP_WRITE;

		ret = FUNC2(bio, page_good->page, PAGE_SIZE, 0);
		if (PAGE_SIZE != ret) {
			FUNC3(bio);
			return -EIO;
		}

		if (FUNC8(bio)) {
			FUNC5(page_bad->dev,
				BTRFS_DEV_STAT_WRITE_ERRS);
			FUNC1(&fs_info->dev_replace.num_write_errors);
			FUNC3(bio);
			return -EIO;
		}
		FUNC3(bio);
	}

	return 0;
}