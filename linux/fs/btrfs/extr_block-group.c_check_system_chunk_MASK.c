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
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {int /*<<< orphan*/  chunk_bytes_reserved; struct btrfs_fs_info* fs_info; } ;
struct btrfs_space_info {scalar_t__ total_bytes; int /*<<< orphan*/  lock; } ;
struct btrfs_fs_info {int /*<<< orphan*/  chunk_block_rsv; int /*<<< orphan*/  chunk_root; int /*<<< orphan*/  chunk_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BLOCK_GROUP_SYSTEM ; 
 int /*<<< orphan*/  BTRFS_RESERVE_NO_FLUSH ; 
 int /*<<< orphan*/  ENOSPC_DEBUG ; 
 int FUNC0 (struct btrfs_trans_handle*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct btrfs_fs_info*,int) ; 
 scalar_t__ FUNC3 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,struct btrfs_space_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_space_info* FUNC5 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct btrfs_space_info*,int) ; 
 scalar_t__ FUNC8 (struct btrfs_fs_info*) ; 
 scalar_t__ FUNC9 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct btrfs_trans_handle *trans, u64 type)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_space_info *info;
	u64 left;
	u64 thresh;
	int ret = 0;
	u64 num_devs;

	/*
	 * Needed because we can end up allocating a system chunk and for an
	 * atomic and race free space reservation in the chunk block reserve.
	 */
	FUNC11(&fs_info->chunk_mutex);

	info = FUNC5(fs_info, BTRFS_BLOCK_GROUP_SYSTEM);
	FUNC12(&info->lock);
	left = info->total_bytes - FUNC7(info, true);
	FUNC13(&info->lock);

	num_devs = FUNC10(fs_info, type);

	/* num_devs device items to update and 1 chunk item to add or remove */
	thresh = FUNC3(fs_info, num_devs) +
		FUNC2(fs_info, 1);

	if (left < thresh && FUNC9(fs_info, ENOSPC_DEBUG)) {
		FUNC6(fs_info, "left=%llu, need=%llu, flags=%llu",
			   left, thresh, type);
		FUNC4(fs_info, info, 0, 0);
	}

	if (left < thresh) {
		u64 flags = FUNC8(fs_info);

		/*
		 * Ignore failure to create system chunk. We might end up not
		 * needing it, as we might not need to COW all nodes/leafs from
		 * the paths we visit in the chunk tree (they were already COWed
		 * or created in the current transaction for example).
		 */
		ret = FUNC0(trans, flags);
	}

	if (!ret) {
		ret = FUNC1(fs_info->chunk_root,
					  &fs_info->chunk_block_rsv,
					  thresh, BTRFS_RESERVE_NO_FLUSH);
		if (!ret)
			trans->chunk_bytes_reserved += thresh;
	}
}