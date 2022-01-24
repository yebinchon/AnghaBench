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
struct btrfs_stripe_hash_table {int cache_size; struct btrfs_stripe_hash* table; } ;
struct btrfs_stripe_hash {int /*<<< orphan*/  lock; } ;
struct btrfs_raid_bio {int /*<<< orphan*/  bio_list_lock; int /*<<< orphan*/  plug_list; int /*<<< orphan*/  refs; int /*<<< orphan*/  hash_list; int /*<<< orphan*/  bio_list; int /*<<< orphan*/  stripe_cache; int /*<<< orphan*/  flags; TYPE_1__* fs_info; } ;
struct TYPE_2__ {struct btrfs_stripe_hash_table* stripe_hash_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RBIO_CACHE_BIT ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_raid_bio*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct btrfs_raid_bio *rbio)
{
	int bucket = FUNC5(rbio);
	struct btrfs_stripe_hash_table *table;
	struct btrfs_stripe_hash *h;
	int freeit = 0;

	/*
	 * check the bit again under the hash table lock.
	 */
	if (!FUNC10(RBIO_CACHE_BIT, &rbio->flags))
		return;

	table = rbio->fs_info->stripe_hash_table;
	h = table->table + bucket;

	/* hold the lock for the bucket because we may be
	 * removing it from the hash table
	 */
	FUNC7(&h->lock);

	/*
	 * hold the lock for the bio list because we need
	 * to make sure the bio list is empty
	 */
	FUNC7(&rbio->bio_list_lock);

	if (FUNC9(RBIO_CACHE_BIT, &rbio->flags)) {
		FUNC3(&rbio->stripe_cache);
		table->cache_size -= 1;
		freeit = 1;

		/* if the bio list isn't empty, this rbio is
		 * still involved in an IO.  We take it out
		 * of the cache list, and drop the ref that
		 * was held for the list.
		 *
		 * If the bio_list was empty, we also remove
		 * the rbio from the hash_table, and drop
		 * the corresponding ref
		 */
		if (FUNC2(&rbio->bio_list)) {
			if (!FUNC4(&rbio->hash_list)) {
				FUNC3(&rbio->hash_list);
				FUNC6(&rbio->refs);
				FUNC0(!FUNC4(&rbio->plug_list));
			}
		}
	}

	FUNC8(&rbio->bio_list_lock);
	FUNC8(&h->lock);

	if (freeit)
		FUNC1(rbio);
}