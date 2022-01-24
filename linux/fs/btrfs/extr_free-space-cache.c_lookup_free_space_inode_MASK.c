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
typedef  int u32 ;
struct inode {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_block_group_cache {int iref; int /*<<< orphan*/  lock; struct inode* inode; int /*<<< orphan*/  disk_cache_state; TYPE_1__ key; struct btrfs_fs_info* fs_info; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DC_CLEAR ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATACOW ; 
 int BTRFS_INODE_NODATASUM ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ,struct btrfs_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,char*) ; 
 void* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct inode *FUNC7(
		struct btrfs_block_group_cache *block_group,
		struct btrfs_path *path)
{
	struct btrfs_fs_info *fs_info = block_group->fs_info;
	struct inode *inode = NULL;
	u32 flags = BTRFS_INODE_NODATASUM | BTRFS_INODE_NODATACOW;

	FUNC5(&block_group->lock);
	if (block_group->inode)
		inode = FUNC4(block_group->inode);
	FUNC6(&block_group->lock);
	if (inode)
		return inode;

	inode = FUNC2(fs_info->tree_root, path,
					  block_group->key.objectid);
	if (FUNC1(inode))
		return inode;

	FUNC5(&block_group->lock);
	if (!((FUNC0(inode)->flags & flags) == flags)) {
		FUNC3(fs_info, "Old style space inode found, converting.");
		FUNC0(inode)->flags |= BTRFS_INODE_NODATASUM |
			BTRFS_INODE_NODATACOW;
		block_group->disk_cache_state = BTRFS_DC_CLEAR;
	}

	if (!block_group->iref) {
		block_group->inode = FUNC4(inode);
		block_group->iref = 1;
	}
	FUNC6(&block_group->lock);

	return inode;
}