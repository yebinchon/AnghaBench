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
typedef  int /*<<< orphan*/  u64 ;
struct full_stripe_lock {int /*<<< orphan*/  mutex; } ;
struct btrfs_full_stripe_locks_tree {int /*<<< orphan*/  lock; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int flags; struct btrfs_full_stripe_locks_tree full_stripe_locks_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BTRFS_BLOCK_GROUP_RAID56_MASK ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct full_stripe_lock*) ; 
 int FUNC2 (struct full_stripe_lock*) ; 
 struct btrfs_block_group_cache* FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*,int /*<<< orphan*/ ) ; 
 struct full_stripe_lock* FUNC6 (struct btrfs_full_stripe_locks_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct btrfs_fs_info *fs_info, u64 bytenr,
			    bool *locked_ret)
{
	struct btrfs_block_group_cache *bg_cache;
	struct btrfs_full_stripe_locks_tree *locks_root;
	struct full_stripe_lock *existing;
	u64 fstripe_start;
	int ret = 0;

	*locked_ret = false;
	bg_cache = FUNC3(fs_info, bytenr);
	if (!bg_cache) {
		FUNC0(0);
		return -ENOENT;
	}

	/* Profiles not based on parity don't need full stripe lock */
	if (!(bg_cache->flags & BTRFS_BLOCK_GROUP_RAID56_MASK))
		goto out;
	locks_root = &bg_cache->full_stripe_locks_root;

	fstripe_start = FUNC5(bg_cache, bytenr);

	/* Now insert the full stripe lock */
	FUNC7(&locks_root->lock);
	existing = FUNC6(locks_root, fstripe_start);
	FUNC8(&locks_root->lock);
	if (FUNC1(existing)) {
		ret = FUNC2(existing);
		goto out;
	}
	FUNC7(&existing->mutex);
	*locked_ret = true;
out:
	FUNC4(bg_cache);
	return ret;
}