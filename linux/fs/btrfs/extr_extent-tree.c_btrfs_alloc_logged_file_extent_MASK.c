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
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_space_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  bytes_reserved; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  reserved; struct btrfs_space_info* space_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MIXED_GROUPS ; 
 int FUNC0 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct btrfs_block_group_cache* FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct btrfs_trans_handle *trans,
				   u64 root_objectid, u64 owner, u64 offset,
				   struct btrfs_key *ins)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	int ret;
	struct btrfs_block_group_cache *block_group;
	struct btrfs_space_info *space_info;

	/*
	 * Mixed block groups will exclude before processing the log so we only
	 * need to do the exclude dance if this fs isn't mixed.
	 */
	if (!FUNC2(fs_info, MIXED_GROUPS)) {
		ret = FUNC0(fs_info, ins->objectid,
					      ins->offset);
		if (ret)
			return ret;
	}

	block_group = FUNC3(fs_info, ins->objectid);
	if (!block_group)
		return -EINVAL;

	space_info = block_group->space_info;
	FUNC5(&space_info->lock);
	FUNC5(&block_group->lock);
	space_info->bytes_reserved += ins->offset;
	block_group->reserved += ins->offset;
	FUNC6(&block_group->lock);
	FUNC6(&space_info->lock);

	ret = FUNC1(trans, 0, root_objectid, 0, owner,
					 offset, ins, 1);
	FUNC4(block_group);
	return ret;
}