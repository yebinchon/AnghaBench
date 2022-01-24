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
struct TYPE_2__ {int /*<<< orphan*/  root; } ;
struct btrfs_block_group_cache {scalar_t__ pinned; scalar_t__ reserved; struct btrfs_block_group_cache* free_space_ctl; TYPE_1__ full_stripe_locks_root; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*) ; 

void FUNC4(struct btrfs_block_group_cache *cache)
{
	if (FUNC2(&cache->count)) {
		FUNC1(cache->pinned > 0);
		FUNC1(cache->reserved > 0);

		/*
		 * If not empty, someone is still holding mutex of
		 * full_stripe_lock, which can only be released by caller.
		 * And it will definitely cause use-after-free when caller
		 * tries to release full stripe lock.
		 *
		 * No better way to resolve, but only to warn.
		 */
		FUNC1(!FUNC0(&cache->full_stripe_locks_root.root));
		FUNC3(cache->free_space_ctl);
		FUNC3(cache);
	}
}