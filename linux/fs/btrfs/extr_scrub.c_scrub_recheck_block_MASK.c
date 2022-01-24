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
struct scrub_page {int io_error; int physical; int /*<<< orphan*/  page; TYPE_1__* dev; } ;
struct scrub_block {int no_io_error_seen; int page_count; struct scrub_page** pagev; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_4__ {int bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_opf; TYPE_2__ bi_iter; } ;
struct TYPE_3__ {int /*<<< orphan*/ * bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ *) ; 
 struct bio* FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 scalar_t__ FUNC6 (struct scrub_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct scrub_block*) ; 
 void FUNC8 (struct btrfs_fs_info*,struct scrub_block*) ; 

__attribute__((used)) static void FUNC9(struct btrfs_fs_info *fs_info,
				struct scrub_block *sblock,
				int retry_failed_mirror)
{
	int page_num;

	sblock->no_io_error_seen = 1;

	/* short cut for raid56 */
	if (!retry_failed_mirror && FUNC6(sblock->pagev[0]))
		return FUNC8(fs_info, sblock);

	for (page_num = 0; page_num < sblock->page_count; page_num++) {
		struct bio *bio;
		struct scrub_page *page = sblock->pagev[page_num];

		if (page->dev->bdev == NULL) {
			page->io_error = 1;
			sblock->no_io_error_seen = 0;
			continue;
		}

		FUNC0(!page->page);
		bio = FUNC4(1);
		FUNC3(bio, page->dev->bdev);

		FUNC1(bio, page->page, PAGE_SIZE, 0);
		bio->bi_iter.bi_sector = page->physical >> 9;
		bio->bi_opf = REQ_OP_READ;

		if (FUNC5(bio)) {
			page->io_error = 1;
			sblock->no_io_error_seen = 0;
		}

		FUNC2(bio);
	}

	if (sblock->no_io_error_seen)
		FUNC7(sblock);
}