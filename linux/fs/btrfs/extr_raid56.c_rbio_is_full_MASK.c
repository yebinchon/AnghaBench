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
struct btrfs_raid_bio {unsigned long bio_list_bytes; unsigned long nr_data; unsigned long stripe_len; int /*<<< orphan*/  bio_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct btrfs_raid_bio *rbio)
{
	unsigned long flags;
	unsigned long size = rbio->bio_list_bytes;
	int ret = 1;

	FUNC1(&rbio->bio_list_lock, flags);
	if (size != rbio->nr_data * rbio->stripe_len)
		ret = 0;
	FUNC0(size > rbio->nr_data * rbio->stripe_len);
	FUNC2(&rbio->bio_list_lock, flags);

	return ret;
}