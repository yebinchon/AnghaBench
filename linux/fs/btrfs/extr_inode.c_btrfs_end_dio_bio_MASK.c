#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct btrfs_dio_private {int errors; int /*<<< orphan*/  orig_bio; TYPE_3__* dio_bio; int /*<<< orphan*/  pending_bios; int /*<<< orphan*/  inode; scalar_t__ (* subio_endio ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  bi_size; scalar_t__ bi_sector; } ;
struct bio {TYPE_2__ bi_iter; int /*<<< orphan*/  bi_opf; scalar_t__ bi_status; struct btrfs_dio_private* bi_private; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_9__ {TYPE_1__* root; } ;
struct TYPE_8__ {int /*<<< orphan*/  bi_status; } ;
struct TYPE_6__ {int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct bio *bio)
{
	struct btrfs_dio_private *dip = bio->bi_private;
	blk_status_t err = bio->bi_status;

	if (err)
		FUNC8(FUNC0(dip->inode)->root->fs_info,
			   "direct IO failed ino %llu rw %d,%u sector %#Lx len %u err no %d",
			   FUNC6(FUNC0(dip->inode)), FUNC4(bio),
			   bio->bi_opf,
			   (unsigned long long)bio->bi_iter.bi_sector,
			   bio->bi_iter.bi_size, err);

	if (dip->subio_endio)
		err = dip->subio_endio(dip->inode, FUNC7(bio), err);

	if (err) {
		/*
		 * We want to perceive the errors flag being set before
		 * decrementing the reference count. We don't need a barrier
		 * since atomic operations with a return value are fully
		 * ordered as per atomic_t.txt
		 */
		dip->errors = 1;
	}

	/* if there are more bios still pending for this dio, just exit */
	if (!FUNC1(&dip->pending_bios))
		goto out;

	if (dip->errors) {
		FUNC3(dip->orig_bio);
	} else {
		dip->dio_bio->bi_status = BLK_STS_OK;
		FUNC2(dip->orig_bio);
	}
out:
	FUNC5(bio);
}