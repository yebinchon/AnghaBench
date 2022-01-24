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
struct btrfs_root_item {int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int BTRFS_INODE_ROOT_ITEM_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_root_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct btrfs_root_item *root_item)
{
	u64 inode_flags = FUNC3(&root_item->inode);

	if (!(inode_flags & BTRFS_INODE_ROOT_ITEM_INIT)) {
		inode_flags |= BTRFS_INODE_ROOT_ITEM_INIT;
		FUNC2(&root_item->inode, inode_flags);
		FUNC0(root_item, 0);
		FUNC1(root_item, 0);
	}
}