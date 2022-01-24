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
struct btrfs_raid_bio {scalar_t__ faila; scalar_t__ failb; int scrubp; TYPE_1__* bbio; int /*<<< orphan*/  error; } ;
struct TYPE_2__ {scalar_t__ max_errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_raid_bio*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_raid_bio*,int) ; 
 scalar_t__ FUNC3 (struct btrfs_raid_bio*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_raid_bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct btrfs_raid_bio *rbio)
{
	if (FUNC1(&rbio->error) > rbio->bbio->max_errors)
		goto cleanup;

	if (rbio->faila >= 0 || rbio->failb >= 0) {
		int dfail = 0, failp = -1;

		if (FUNC3(rbio, rbio->faila))
			dfail++;
		else if (FUNC4(rbio->faila))
			failp = rbio->faila;

		if (FUNC3(rbio, rbio->failb))
			dfail++;
		else if (FUNC4(rbio->failb))
			failp = rbio->failb;

		/*
		 * Because we can not use a scrubbing parity to repair
		 * the data, so the capability of the repair is declined.
		 * (In the case of RAID5, we can not repair anything)
		 */
		if (dfail > rbio->bbio->max_errors - 1)
			goto cleanup;

		/*
		 * If all data is good, only parity is correctly, just
		 * repair the parity.
		 */
		if (dfail == 0) {
			FUNC2(rbio, 0);
			return;
		}

		/*
		 * Here means we got one corrupted data stripe and one
		 * corrupted parity on RAID6, if the corrupted parity
		 * is scrubbing parity, luckily, use the other one to repair
		 * the data, or we can not repair the data stripe.
		 */
		if (failp != rbio->scrubp)
			goto cleanup;

		FUNC0(rbio);
	} else {
		FUNC2(rbio, 1);
	}
	return;

cleanup:
	FUNC5(rbio, BLK_STS_IOERR);
}