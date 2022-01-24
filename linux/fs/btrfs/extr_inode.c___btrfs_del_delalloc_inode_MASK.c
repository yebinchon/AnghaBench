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
struct btrfs_root {int /*<<< orphan*/  delalloc_root; int /*<<< orphan*/  delalloc_inodes; int /*<<< orphan*/  nr_delalloc_inodes; struct btrfs_fs_info* fs_info; } ;
struct btrfs_inode {int /*<<< orphan*/  runtime_flags; int /*<<< orphan*/  delalloc_inodes; } ;
struct btrfs_fs_info {int /*<<< orphan*/  delalloc_root_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTRFS_INODE_IN_DELALLOC_LIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct btrfs_root *root,
				struct btrfs_inode *inode)
{
	struct btrfs_fs_info *fs_info = root->fs_info;

	if (!FUNC4(&inode->delalloc_inodes)) {
		FUNC3(&inode->delalloc_inodes);
		FUNC2(BTRFS_INODE_IN_DELALLOC_LIST,
			  &inode->runtime_flags);
		root->nr_delalloc_inodes--;
		if (!root->nr_delalloc_inodes) {
			FUNC0(FUNC4(&root->delalloc_inodes));
			FUNC5(&fs_info->delalloc_root_lock);
			FUNC1(FUNC4(&root->delalloc_root));
			FUNC3(&root->delalloc_root);
			FUNC6(&fs_info->delalloc_root_lock);
		}
	}
}