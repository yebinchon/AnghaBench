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
struct btrfs_raid_bio {int /*<<< orphan*/  stripes_pending; } ;
struct bio {scalar_t__ bi_status; struct btrfs_raid_bio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_raid_bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_raid_bio*) ; 

__attribute__((used)) static void FUNC5(struct bio *bio)
{
	struct btrfs_raid_bio *rbio = bio->bi_private;

	if (bio->bi_status)
		FUNC2(rbio, bio);
	else
		FUNC3(bio);

	FUNC1(bio);

	if (!FUNC0(&rbio->stripes_pending))
		return;

	/*
	 * this will normally call finish_rmw to start our write
	 * but if there are any failed stripes we'll reconstruct
	 * from parity first
	 */
	FUNC4(rbio);
}