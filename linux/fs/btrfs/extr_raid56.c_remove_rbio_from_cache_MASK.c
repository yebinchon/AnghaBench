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
struct btrfs_stripe_hash_table {int /*<<< orphan*/  cache_lock; } ;
struct btrfs_raid_bio {TYPE_1__* fs_info; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct btrfs_stripe_hash_table* stripe_hash_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  RBIO_CACHE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct btrfs_raid_bio *rbio)
{
	struct btrfs_stripe_hash_table *table;
	unsigned long flags;

	if (!FUNC3(RBIO_CACHE_BIT, &rbio->flags))
		return;

	table = rbio->fs_info->stripe_hash_table;

	FUNC1(&table->cache_lock, flags);
	FUNC0(rbio);
	FUNC2(&table->cache_lock, flags);
}