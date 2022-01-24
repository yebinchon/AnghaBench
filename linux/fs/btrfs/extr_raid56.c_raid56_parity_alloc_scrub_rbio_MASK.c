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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_raid_bio {int nr_data; int real_stripes; int scrubp; int stripe_npages; int generic_bio_cnt; int /*<<< orphan*/  dbitmap; int /*<<< orphan*/  operation; int /*<<< orphan*/  bio_list; } ;
struct btrfs_fs_info {scalar_t__ sectorsize; } ;
struct btrfs_device {int dummy; } ;
struct btrfs_bio {TYPE_2__* stripes; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
struct TYPE_4__ {struct btrfs_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTRFS_RBIO_PARITY_SCRUB ; 
 scalar_t__ FUNC1 (struct btrfs_raid_bio*) ; 
 scalar_t__ PAGE_SIZE ; 
 struct btrfs_raid_bio* FUNC2 (struct btrfs_fs_info*,struct btrfs_bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*,int) ; 

struct btrfs_raid_bio *
FUNC5(struct btrfs_fs_info *fs_info, struct bio *bio,
			       struct btrfs_bio *bbio, u64 stripe_len,
			       struct btrfs_device *scrub_dev,
			       unsigned long *dbitmap, int stripe_nsectors)
{
	struct btrfs_raid_bio *rbio;
	int i;

	rbio = FUNC2(fs_info, bbio, stripe_len);
	if (FUNC1(rbio))
		return NULL;
	FUNC3(&rbio->bio_list, bio);
	/*
	 * This is a special bio which is used to hold the completion handler
	 * and make the scrub rbio is similar to the other types
	 */
	FUNC0(!bio->bi_iter.bi_size);
	rbio->operation = BTRFS_RBIO_PARITY_SCRUB;

	/*
	 * After mapping bbio with BTRFS_MAP_WRITE, parities have been sorted
	 * to the end position, so this search can start from the first parity
	 * stripe.
	 */
	for (i = rbio->nr_data; i < rbio->real_stripes; i++) {
		if (bbio->stripes[i].dev == scrub_dev) {
			rbio->scrubp = i;
			break;
		}
	}
	FUNC0(i < rbio->real_stripes);

	/* Now we just support the sectorsize equals to page size */
	FUNC0(fs_info->sectorsize == PAGE_SIZE);
	FUNC0(rbio->stripe_npages == stripe_nsectors);
	FUNC4(rbio->dbitmap, dbitmap, stripe_nsectors);

	/*
	 * We have already increased bio_counter when getting bbio, record it
	 * so we can free it at rbio_orig_end_io().
	 */
	rbio->generic_bio_cnt = 1;

	return rbio;
}