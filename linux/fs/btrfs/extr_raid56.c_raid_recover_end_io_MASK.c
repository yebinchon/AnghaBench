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
struct btrfs_raid_bio {TYPE_1__* bbio; int /*<<< orphan*/  error; int /*<<< orphan*/  stripes_pending; } ;
struct bio {scalar_t__ bi_status; struct btrfs_raid_bio* bi_private; } ;
struct TYPE_2__ {scalar_t__ max_errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_raid_bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_raid_bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 

__attribute__((used)) static void FUNC7(struct bio *bio)
{
	struct btrfs_raid_bio *rbio = bio->bi_private;

	/*
	 * we only read stripe pages off the disk, set them
	 * up to date if there were no errors
	 */
	if (bio->bi_status)
		FUNC4(rbio, bio);
	else
		FUNC6(bio);
	FUNC3(bio);

	if (!FUNC1(&rbio->stripes_pending))
		return;

	if (FUNC2(&rbio->error) > rbio->bbio->max_errors)
		FUNC5(rbio, BLK_STS_IOERR);
	else
		FUNC0(rbio);
}