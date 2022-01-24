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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_raid_bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_raid_bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_raid_bio*) ; 

__attribute__((used)) static void FUNC7(struct bio *bio)
{
	struct btrfs_raid_bio *rbio = bio->bi_private;

	if (bio->bi_status)
		FUNC3(rbio, bio);
	else
		FUNC5(bio);

	FUNC2(bio);

	if (!FUNC0(&rbio->stripes_pending))
		return;

	if (FUNC1(&rbio->error) > rbio->bbio->max_errors)
		goto cleanup;

	/*
	 * this will normally call finish_rmw to start our write
	 * but if there are any failed stripes we'll reconstruct
	 * from parity first
	 */
	FUNC6(rbio);
	return;

cleanup:

	FUNC4(rbio, BLK_STS_IOERR);
}