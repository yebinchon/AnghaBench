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
typedef  int u64 ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_block_rsv {int /*<<< orphan*/  space_info; } ;
struct btrfs_fs_info {int nodesize; int /*<<< orphan*/  flags; struct btrfs_block_rsv global_block_rsv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BLOCK_GROUP_METADATA ; 
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int /*<<< orphan*/  BTRFS_RESERVE_FLUSH_ALL ; 
 int ENOSPC ; 
 int FUNC0 (struct btrfs_root*,struct btrfs_block_rsv*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_block_rsv*,struct btrfs_block_rsv*,int,int) ; 
 int FUNC2 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,int) ; 
 int FUNC5 (struct btrfs_root*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct btrfs_root *root,
				     struct btrfs_block_rsv *rsv, int items,
				     bool use_global_rsv)
{
	u64 qgroup_num_bytes = 0;
	u64 num_bytes;
	int ret;
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_block_rsv *global_rsv = &fs_info->global_block_rsv;

	if (FUNC6(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags)) {
		/* One for parent inode, two for dir entries */
		qgroup_num_bytes = 3 * fs_info->nodesize;
		ret = FUNC5(root,
				qgroup_num_bytes, true);
		if (ret)
			return ret;
	}

	num_bytes = FUNC2(fs_info, items);
	rsv->space_info = FUNC3(fs_info,
					    BTRFS_BLOCK_GROUP_METADATA);
	ret = FUNC0(root, rsv, num_bytes,
				  BTRFS_RESERVE_FLUSH_ALL);

	if (ret == -ENOSPC && use_global_rsv)
		ret = FUNC1(global_rsv, rsv, num_bytes, true);

	if (ret && qgroup_num_bytes)
		FUNC4(root, qgroup_num_bytes);

	return ret;
}