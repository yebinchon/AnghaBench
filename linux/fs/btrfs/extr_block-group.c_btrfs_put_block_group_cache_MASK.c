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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct TYPE_3__ {int /*<<< orphan*/ * inode; } ;
struct btrfs_block_group_cache {TYPE_2__ key; TYPE_1__ io_ctl; int /*<<< orphan*/  lock; struct inode* inode; scalar_t__ iref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct btrfs_block_group_cache* FUNC1 (struct btrfs_fs_info*,scalar_t__) ; 
 struct btrfs_block_group_cache* FUNC2 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct btrfs_fs_info *info)
{
	struct btrfs_block_group_cache *block_group;
	u64 last = 0;

	while (1) {
		struct inode *inode;

		block_group = FUNC1(info, last);
		while (block_group) {
			FUNC4(block_group);
			FUNC6(&block_group->lock);
			if (block_group->iref)
				break;
			FUNC7(&block_group->lock);
			block_group = FUNC2(block_group);
		}
		if (!block_group) {
			if (last == 0)
				break;
			last = 0;
			continue;
		}

		inode = block_group->inode;
		block_group->iref = 0;
		block_group->inode = NULL;
		FUNC7(&block_group->lock);
		FUNC0(block_group->io_ctl.inode == NULL);
		FUNC5(inode);
		last = block_group->key.objectid + block_group->key.offset;
		FUNC3(block_group);
	}
}