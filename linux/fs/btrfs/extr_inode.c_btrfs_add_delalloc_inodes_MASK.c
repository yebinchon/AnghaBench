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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_root {int nr_delalloc_inodes; int /*<<< orphan*/  delalloc_lock; int /*<<< orphan*/  delalloc_root; int /*<<< orphan*/  delalloc_inodes; } ;
struct btrfs_fs_info {int /*<<< orphan*/  delalloc_root_lock; int /*<<< orphan*/  delalloc_roots; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; int /*<<< orphan*/  delalloc_inodes; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_IN_DELALLOC_LIST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct btrfs_fs_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct btrfs_root *root,
				      struct inode *inode)
{
	struct btrfs_fs_info *fs_info = FUNC2(inode->i_sb);

	FUNC6(&root->delalloc_lock);
	if (FUNC4(&FUNC0(inode)->delalloc_inodes)) {
		FUNC3(&FUNC0(inode)->delalloc_inodes,
			      &root->delalloc_inodes);
		FUNC5(BTRFS_INODE_IN_DELALLOC_LIST,
			&FUNC0(inode)->runtime_flags);
		root->nr_delalloc_inodes++;
		if (root->nr_delalloc_inodes == 1) {
			FUNC6(&fs_info->delalloc_root_lock);
			FUNC1(!FUNC4(&root->delalloc_root));
			FUNC3(&root->delalloc_root,
				      &fs_info->delalloc_roots);
			FUNC7(&fs_info->delalloc_root_lock);
		}
	}
	FUNC7(&root->delalloc_lock);
}