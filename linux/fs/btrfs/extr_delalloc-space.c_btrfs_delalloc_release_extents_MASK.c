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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_inode {int /*<<< orphan*/  lock; TYPE_1__* root; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_inode*,int) ; 
 scalar_t__ FUNC2 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_inode*,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct btrfs_inode *inode, u64 num_bytes)
{
	struct btrfs_fs_info *fs_info = inode->root->fs_info;
	unsigned num_extents;

	FUNC5(&inode->lock);
	num_extents = FUNC4(num_bytes);
	FUNC3(inode, -num_extents);
	FUNC0(fs_info, inode);
	FUNC6(&inode->lock);

	if (FUNC2(fs_info))
		return;

	FUNC1(inode, true);
}