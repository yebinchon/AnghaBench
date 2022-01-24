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
struct scrub_page {int io_error; int /*<<< orphan*/  page; TYPE_1__* dev; } ;
struct scrub_block {int page_count; scalar_t__ no_io_error_seen; struct scrub_page** pagev; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scrub_block*) ; 
 scalar_t__ FUNC7 (struct btrfs_fs_info*,struct bio*,struct scrub_page*) ; 

__attribute__((used)) static void FUNC8(struct btrfs_fs_info *fs_info,
					  struct scrub_block *sblock)
{
	struct scrub_page *first_page = sblock->pagev[0];
	struct bio *bio;
	int page_num;

	/* All pages in sblock belong to the same stripe on the same device. */
	FUNC0(first_page->dev);
	if (!first_page->dev->bdev)
		goto out;

	bio = FUNC5(BIO_MAX_PAGES);
	FUNC4(bio, first_page->dev->bdev);

	for (page_num = 0; page_num < sblock->page_count; page_num++) {
		struct scrub_page *page = sblock->pagev[page_num];

		FUNC1(!page->page);
		FUNC2(bio, page->page, PAGE_SIZE, 0);
	}

	if (FUNC7(fs_info, bio, first_page)) {
		FUNC3(bio);
		goto out;
	}

	FUNC3(bio);

	FUNC6(sblock);

	return;
out:
	for (page_num = 0; page_num < sblock->page_count; page_num++)
		sblock->pagev[page_num]->io_error = 1;

	sblock->no_io_error_seen = 0;
}