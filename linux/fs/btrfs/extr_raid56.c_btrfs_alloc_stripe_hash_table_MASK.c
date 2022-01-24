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
struct btrfs_stripe_hash_table {struct btrfs_stripe_hash* table; int /*<<< orphan*/  stripe_cache; int /*<<< orphan*/  cache_lock; } ;
struct btrfs_stripe_hash {int /*<<< orphan*/  lock; int /*<<< orphan*/  hash_list; } ;
struct btrfs_fs_info {scalar_t__ stripe_hash_table; } ;

/* Variables and functions */
 int BTRFS_STRIPE_HASH_TABLE_BITS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct btrfs_stripe_hash_table* FUNC1 (scalar_t__*,int /*<<< orphan*/ *,struct btrfs_stripe_hash_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_stripe_hash_table*) ; 
 struct btrfs_stripe_hash_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct btrfs_fs_info *info)
{
	struct btrfs_stripe_hash_table *table;
	struct btrfs_stripe_hash_table *x;
	struct btrfs_stripe_hash *cur;
	struct btrfs_stripe_hash *h;
	int num_entries = 1 << BTRFS_STRIPE_HASH_TABLE_BITS;
	int i;
	int table_size;

	if (info->stripe_hash_table)
		return 0;

	/*
	 * The table is large, starting with order 4 and can go as high as
	 * order 7 in case lock debugging is turned on.
	 *
	 * Try harder to allocate and fallback to vmalloc to lower the chance
	 * of a failing mount.
	 */
	table_size = sizeof(*table) + sizeof(*h) * num_entries;
	table = FUNC3(table_size, GFP_KERNEL);
	if (!table)
		return -ENOMEM;

	FUNC4(&table->cache_lock);
	FUNC0(&table->stripe_cache);

	h = table->table;

	for (i = 0; i < num_entries; i++) {
		cur = h + i;
		FUNC0(&cur->hash_list);
		FUNC4(&cur->lock);
	}

	x = FUNC1(&info->stripe_hash_table, NULL, table);
	if (x)
		FUNC2(x);
	return 0;
}