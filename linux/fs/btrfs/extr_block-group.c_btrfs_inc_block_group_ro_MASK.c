#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct btrfs_trans_handle {int transid; TYPE_1__* transaction; } ;
struct btrfs_fs_info {int /*<<< orphan*/  ro_block_group_mutex; int /*<<< orphan*/  chunk_mutex; int /*<<< orphan*/  extent_root; } ;
struct btrfs_block_group_cache {int flags; TYPE_2__* space_info; struct btrfs_fs_info* fs_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_SYSTEM ; 
 int /*<<< orphan*/  BTRFS_TRANS_DIRTY_BG_RUN ; 
 int /*<<< orphan*/  CHUNK_ALLOC_FORCE ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*) ; 
 int FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct btrfs_trans_handle* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,int) ; 
 int FUNC8 (struct btrfs_block_group_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct btrfs_fs_info*,int) ; 

int FUNC13(struct btrfs_block_group_cache *cache)

{
	struct btrfs_fs_info *fs_info = cache->fs_info;
	struct btrfs_trans_handle *trans;
	u64 alloc_flags;
	int ret;

again:
	trans = FUNC5(fs_info->extent_root);
	if (FUNC0(trans))
		return FUNC1(trans);

	/*
	 * we're not allowed to set block groups readonly after the dirty
	 * block groups cache has started writing.  If it already started,
	 * back off and let this transaction commit
	 */
	FUNC9(&fs_info->ro_block_group_mutex);
	if (FUNC11(BTRFS_TRANS_DIRTY_BG_RUN, &trans->transaction->flags)) {
		u64 transid = trans->transid;

		FUNC10(&fs_info->ro_block_group_mutex);
		FUNC3(trans);

		ret = FUNC6(fs_info, transid);
		if (ret)
			return ret;
		goto again;
	}

	/*
	 * if we are changing raid levels, try to allocate a corresponding
	 * block group with the new raid level.
	 */
	alloc_flags = FUNC12(fs_info, cache->flags);
	if (alloc_flags != cache->flags) {
		ret = FUNC2(trans, alloc_flags, CHUNK_ALLOC_FORCE);
		/*
		 * ENOSPC is allowed here, we may have enough space
		 * already allocated at the new raid level to
		 * carry on
		 */
		if (ret == -ENOSPC)
			ret = 0;
		if (ret < 0)
			goto out;
	}

	ret = FUNC8(cache, 0);
	if (!ret)
		goto out;
	alloc_flags = FUNC4(fs_info, cache->space_info->flags);
	ret = FUNC2(trans, alloc_flags, CHUNK_ALLOC_FORCE);
	if (ret < 0)
		goto out;
	ret = FUNC8(cache, 0);
out:
	if (cache->flags & BTRFS_BLOCK_GROUP_SYSTEM) {
		alloc_flags = FUNC12(fs_info, cache->flags);
		FUNC9(&fs_info->chunk_mutex);
		FUNC7(trans, alloc_flags);
		FUNC10(&fs_info->chunk_mutex);
	}
	FUNC10(&fs_info->ro_block_group_mutex);

	FUNC3(trans);
	return ret;
}