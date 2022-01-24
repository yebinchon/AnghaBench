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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct btrfs_path {int search_commit_root; int skip_locking; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_root; } ;
struct btrfs_free_space_ctl {scalar_t__ free_space; int /*<<< orphan*/  tree_lock; } ;
struct TYPE_2__ {scalar_t__ offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_block_group_cache {scalar_t__ disk_cache_state; scalar_t__ bytes_super; TYPE_1__ key; int /*<<< orphan*/  lock; int /*<<< orphan*/  item; struct btrfs_free_space_ctl* free_space_ctl; struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 scalar_t__ BTRFS_DC_CLEAR ; 
 scalar_t__ BTRFS_DC_WRITTEN ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_free_space_ctl*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct inode*,struct btrfs_free_space_ctl*,struct btrfs_path*,int /*<<< orphan*/ ) ; 
 struct btrfs_path* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct btrfs_block_group_cache *block_group)
{
	struct btrfs_fs_info *fs_info = block_group->fs_info;
	struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
	struct inode *inode;
	struct btrfs_path *path;
	int ret = 0;
	bool matched;
	u64 used = FUNC4(&block_group->item);

	/*
	 * If this block group has been marked to be cleared for one reason or
	 * another then we can't trust the on disk cache, so just return.
	 */
	FUNC9(&block_group->lock);
	if (block_group->disk_cache_state != BTRFS_DC_WRITTEN) {
		FUNC10(&block_group->lock);
		return 0;
	}
	FUNC10(&block_group->lock);

	path = FUNC3();
	if (!path)
		return 0;
	path->search_commit_root = 1;
	path->skip_locking = 1;

	/*
	 * We must pass a path with search_commit_root set to btrfs_iget in
	 * order to avoid a deadlock when allocating extents for the tree root.
	 *
	 * When we are COWing an extent buffer from the tree root, when looking
	 * for a free extent, at extent-tree.c:find_free_extent(), we can find
	 * block group without its free space cache loaded. When we find one
	 * we must load its space cache which requires reading its free space
	 * cache's inode item from the root tree. If this inode item is located
	 * in the same leaf that we started COWing before, then we end up in
	 * deadlock on the extent buffer (trying to read lock it when we
	 * previously write locked it).
	 *
	 * It's safe to read the inode item using the commit root because
	 * block groups, once loaded, stay in memory forever (until they are
	 * removed) as well as their space caches once loaded. New block groups
	 * once created get their ->cached field set to BTRFS_CACHE_FINISHED so
	 * we will never try to read their inode item while the fs is mounted.
	 */
	inode = FUNC8(block_group, path);
	if (FUNC0(inode)) {
		FUNC5(path);
		return 0;
	}

	/* We may have converted the inode and made the cache invalid. */
	FUNC9(&block_group->lock);
	if (block_group->disk_cache_state != BTRFS_DC_WRITTEN) {
		FUNC10(&block_group->lock);
		FUNC5(path);
		goto out;
	}
	FUNC10(&block_group->lock);

	ret = FUNC2(fs_info->tree_root, inode, ctl,
				      path, block_group->key.objectid);
	FUNC5(path);
	if (ret <= 0)
		goto out;

	FUNC9(&ctl->tree_lock);
	matched = (ctl->free_space == (block_group->key.offset - used -
				       block_group->bytes_super));
	FUNC10(&ctl->tree_lock);

	if (!matched) {
		FUNC1(ctl);
		FUNC6(fs_info,
			   "block group %llu has wrong amount of free space",
			   block_group->key.objectid);
		ret = -1;
	}
out:
	if (ret < 0) {
		/* This cache is bogus, make sure it gets cleared */
		FUNC9(&block_group->lock);
		block_group->disk_cache_state = BTRFS_DC_CLEAR;
		FUNC10(&block_group->lock);
		ret = 0;

		FUNC6(fs_info,
			   "failed to load free space cache for block group %llu, rebuilding it now",
			   block_group->key.objectid);
	}

	FUNC7(inode);
	return ret;
}