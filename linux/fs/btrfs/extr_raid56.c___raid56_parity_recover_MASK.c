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
struct page {int dummy; } ;
struct btrfs_raid_bio {int real_stripes; int faila; int failb; int stripe_npages; scalar_t__ operation; int /*<<< orphan*/  fs_info; int /*<<< orphan*/  stripes_pending; TYPE_1__* bbio; int /*<<< orphan*/  error; int /*<<< orphan*/  stripe_len; } ;
struct bio_list {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_opf; int /*<<< orphan*/  bi_end_io; struct btrfs_raid_bio* bi_private; } ;
struct TYPE_2__ {scalar_t__ max_errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 scalar_t__ BTRFS_RBIO_READ_REBUILD ; 
 scalar_t__ BTRFS_RBIO_REBUILD_MISSING ; 
 int /*<<< orphan*/  BTRFS_WQ_ENDIO_RAID56 ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_raid_bio*) ; 
 int FUNC2 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bio_list*) ; 
 struct bio* FUNC7 (struct bio_list*) ; 
 int FUNC8 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raid_recover_end_io ; 
 int FUNC11 (struct btrfs_raid_bio*,struct bio_list*,struct page*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_raid_bio*,int /*<<< orphan*/ ) ; 
 struct page* FUNC13 (struct btrfs_raid_bio*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bio*) ; 

__attribute__((used)) static int FUNC15(struct btrfs_raid_bio *rbio)
{
	int bios_to_read = 0;
	struct bio_list bio_list;
	int ret;
	int pagenr;
	int stripe;
	struct bio *bio;

	FUNC6(&bio_list);

	ret = FUNC2(rbio);
	if (ret)
		goto cleanup;

	FUNC5(&rbio->error, 0);

	/*
	 * read everything that hasn't failed.  Thanks to the
	 * stripe cache, it is possible that some or all of these
	 * pages are going to be uptodate.
	 */
	for (stripe = 0; stripe < rbio->real_stripes; stripe++) {
		if (rbio->faila == stripe || rbio->failb == stripe) {
			FUNC3(&rbio->error);
			continue;
		}

		for (pagenr = 0; pagenr < rbio->stripe_npages; pagenr++) {
			struct page *p;

			/*
			 * the rmw code may have already read this
			 * page in
			 */
			p = FUNC13(rbio, stripe, pagenr);
			if (FUNC0(p))
				continue;

			ret = FUNC11(rbio, &bio_list,
				       FUNC13(rbio, stripe, pagenr),
				       stripe, pagenr, rbio->stripe_len);
			if (ret < 0)
				goto cleanup;
		}
	}

	bios_to_read = FUNC8(&bio_list);
	if (!bios_to_read) {
		/*
		 * we might have no bios to read just because the pages
		 * were up to date, or we might have no bios to read because
		 * the devices were gone.
		 */
		if (FUNC4(&rbio->error) <= rbio->bbio->max_errors) {
			FUNC1(rbio);
			goto out;
		} else {
			goto cleanup;
		}
	}

	/*
	 * the bbio may be freed once we submit the last bio.  Make sure
	 * not to touch it after that
	 */
	FUNC5(&rbio->stripes_pending, bios_to_read);
	while (1) {
		bio = FUNC7(&bio_list);
		if (!bio)
			break;

		bio->bi_private = rbio;
		bio->bi_end_io = raid_recover_end_io;
		bio->bi_opf = REQ_OP_READ;

		FUNC10(rbio->fs_info, bio, BTRFS_WQ_ENDIO_RAID56);

		FUNC14(bio);
	}
out:
	return 0;

cleanup:
	if (rbio->operation == BTRFS_RBIO_READ_REBUILD ||
	    rbio->operation == BTRFS_RBIO_REBUILD_MISSING)
		FUNC12(rbio, BLK_STS_IOERR);

	while ((bio = FUNC7(&bio_list)))
		FUNC9(bio);

	return -EIO;
}