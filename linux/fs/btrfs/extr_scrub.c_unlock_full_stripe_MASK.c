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
struct full_stripe_lock {scalar_t__ refs; int /*<<< orphan*/  mutex; int /*<<< orphan*/  node; int /*<<< orphan*/  logical; } ;
struct btrfs_full_stripe_locks_tree {int /*<<< orphan*/  lock; int /*<<< orphan*/  root; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int flags; struct btrfs_full_stripe_locks_tree full_stripe_locks_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BTRFS_BLOCK_GROUP_RAID56_MASK ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct btrfs_block_group_cache* FUNC2 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct full_stripe_lock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct full_stripe_lock* FUNC10 (struct btrfs_full_stripe_locks_tree*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct btrfs_fs_info *fs_info, u64 bytenr,
			      bool locked)
{
	struct btrfs_block_group_cache *bg_cache;
	struct btrfs_full_stripe_locks_tree *locks_root;
	struct full_stripe_lock *fstripe_lock;
	u64 fstripe_start;
	bool freeit = false;
	int ret = 0;

	/* If we didn't acquire full stripe lock, no need to continue */
	if (!locked)
		return 0;

	bg_cache = FUNC2(fs_info, bytenr);
	if (!bg_cache) {
		FUNC0(0);
		return -ENOENT;
	}
	if (!(bg_cache->flags & BTRFS_BLOCK_GROUP_RAID56_MASK))
		goto out;

	locks_root = &bg_cache->full_stripe_locks_root;
	fstripe_start = FUNC5(bg_cache, bytenr);

	FUNC7(&locks_root->lock);
	fstripe_lock = FUNC10(locks_root, fstripe_start);
	/* Unpaired unlock_full_stripe() detected */
	if (!fstripe_lock) {
		FUNC1(1);
		ret = -ENOENT;
		FUNC8(&locks_root->lock);
		goto out;
	}

	if (fstripe_lock->refs == 0) {
		FUNC1(1);
		FUNC4(fs_info, "full stripe lock at %llu refcount underflow",
			fstripe_lock->logical);
	} else {
		fstripe_lock->refs--;
	}

	if (fstripe_lock->refs == 0) {
		FUNC9(&fstripe_lock->node, &locks_root->root);
		freeit = true;
	}
	FUNC8(&locks_root->lock);

	FUNC8(&fstripe_lock->mutex);
	if (freeit)
		FUNC6(fstripe_lock);
out:
	FUNC3(bg_cache);
	return ret;
}