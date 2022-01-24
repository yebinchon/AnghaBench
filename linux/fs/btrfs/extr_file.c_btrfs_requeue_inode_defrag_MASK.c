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
struct inode_defrag {int dummy; } ;
struct btrfs_inode {TYPE_1__* root; } ;
struct btrfs_fs_info {int /*<<< orphan*/  defrag_inodes_lock; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_inode*,struct inode_defrag*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  btrfs_inode_defrag_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inode_defrag*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct btrfs_inode *inode,
				       struct inode_defrag *defrag)
{
	struct btrfs_fs_info *fs_info = inode->root->fs_info;
	int ret;

	if (!FUNC1(fs_info))
		goto out;

	/*
	 * Here we don't check the IN_DEFRAG flag, because we need merge
	 * them together.
	 */
	FUNC3(&fs_info->defrag_inodes_lock);
	ret = FUNC0(inode, defrag);
	FUNC4(&fs_info->defrag_inodes_lock);
	if (ret)
		goto out;
	return;
out:
	FUNC2(btrfs_inode_defrag_cachep, defrag);
}