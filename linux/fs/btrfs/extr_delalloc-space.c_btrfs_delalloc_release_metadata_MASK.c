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
struct btrfs_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  csum_bytes; TYPE_1__* root; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sectorsize; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_inode*,int) ; 
 scalar_t__ FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct btrfs_inode *inode, u64 num_bytes,
				     bool qgroup_free)
{
	struct btrfs_fs_info *fs_info = inode->root->fs_info;

	num_bytes = FUNC0(num_bytes, fs_info->sectorsize);
	FUNC4(&inode->lock);
	inode->csum_bytes -= num_bytes;
	FUNC1(fs_info, inode);
	FUNC5(&inode->lock);

	if (FUNC3(fs_info))
		return;

	FUNC2(inode, qgroup_free);
}