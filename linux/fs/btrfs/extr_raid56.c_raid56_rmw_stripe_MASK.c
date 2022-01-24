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
struct page {int dummy; } ;
struct btrfs_raid_bio {int nr_data; int stripe_npages; int /*<<< orphan*/  fs_info; int /*<<< orphan*/  stripes_pending; int /*<<< orphan*/  stripe_len; int /*<<< orphan*/  error; } ;
struct bio_list {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_opf; int /*<<< orphan*/  bi_end_io; struct btrfs_raid_bio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BTRFS_WQ_ENDIO_RAID56 ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int FUNC1 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*) ; 
 struct bio* FUNC4 (struct bio_list*) ; 
 int FUNC5 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_raid_bio*) ; 
 struct page* FUNC9 (struct btrfs_raid_bio*,int,int,int) ; 
 int /*<<< orphan*/  raid_rmw_end_io ; 
 int FUNC10 (struct btrfs_raid_bio*,struct bio_list*,struct page*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_raid_bio*,int /*<<< orphan*/ ) ; 
 struct page* FUNC12 (struct btrfs_raid_bio*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bio*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_raid_bio*) ; 

__attribute__((used)) static int FUNC15(struct btrfs_raid_bio *rbio)
{
	int bios_to_read = 0;
	struct bio_list bio_list;
	int ret;
	int pagenr;
	int stripe;
	struct bio *bio;

	FUNC3(&bio_list);

	ret = FUNC1(rbio);
	if (ret)
		goto cleanup;

	FUNC8(rbio);

	FUNC2(&rbio->error, 0);
	/*
	 * build a list of bios to read all the missing parts of this
	 * stripe
	 */
	for (stripe = 0; stripe < rbio->nr_data; stripe++) {
		for (pagenr = 0; pagenr < rbio->stripe_npages; pagenr++) {
			struct page *page;
			/*
			 * we want to find all the pages missing from
			 * the rbio and read them from the disk.  If
			 * page_in_rbio finds a page in the bio list
			 * we don't need to read it off the stripe.
			 */
			page = FUNC9(rbio, stripe, pagenr, 1);
			if (page)
				continue;

			page = FUNC12(rbio, stripe, pagenr);
			/*
			 * the bio cache may have handed us an uptodate
			 * page.  If so, be happy and use it
			 */
			if (FUNC0(page))
				continue;

			ret = FUNC10(rbio, &bio_list, page,
				       stripe, pagenr, rbio->stripe_len);
			if (ret)
				goto cleanup;
		}
	}

	bios_to_read = FUNC5(&bio_list);
	if (!bios_to_read) {
		/*
		 * this can happen if others have merged with
		 * us, it means there is nothing left to read.
		 * But if there are missing devices it may not be
		 * safe to do the full stripe write yet.
		 */
		goto finish;
	}

	/*
	 * the bbio may be freed once we submit the last bio.  Make sure
	 * not to touch it after that
	 */
	FUNC2(&rbio->stripes_pending, bios_to_read);
	while (1) {
		bio = FUNC4(&bio_list);
		if (!bio)
			break;

		bio->bi_private = rbio;
		bio->bi_end_io = raid_rmw_end_io;
		bio->bi_opf = REQ_OP_READ;

		FUNC7(rbio->fs_info, bio, BTRFS_WQ_ENDIO_RAID56);

		FUNC13(bio);
	}
	/* the actual write will happen once the reads are done */
	return 0;

cleanup:
	FUNC11(rbio, BLK_STS_IOERR);

	while ((bio = FUNC4(&bio_list)))
		FUNC6(bio);

	return -EIO;

finish:
	FUNC14(rbio);
	return 0;
}