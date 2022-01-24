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
struct btrfs_raid_bio {int faila; int failb; int /*<<< orphan*/  bio_list_lock; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct btrfs_raid_bio *rbio, int failed)
{
	unsigned long flags;
	int ret = 0;

	FUNC1(&rbio->bio_list_lock, flags);

	/* we already know this stripe is bad, move on */
	if (rbio->faila == failed || rbio->failb == failed)
		goto out;

	if (rbio->faila == -1) {
		/* first failure on this rbio */
		rbio->faila = failed;
		FUNC0(&rbio->error);
	} else if (rbio->failb == -1) {
		/* second failure on this rbio */
		rbio->failb = failed;
		FUNC0(&rbio->error);
	} else {
		ret = -EIO;
	}
out:
	FUNC2(&rbio->bio_list_lock, flags);

	return ret;
}