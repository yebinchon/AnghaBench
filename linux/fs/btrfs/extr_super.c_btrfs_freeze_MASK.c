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
struct super_block {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; struct btrfs_root* tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_FROZEN ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 struct btrfs_trans_handle* FUNC2 (struct btrfs_root*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 struct btrfs_fs_info* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_fs_info *fs_info = FUNC4(sb);
	struct btrfs_root *root = fs_info->tree_root;

	FUNC5(BTRFS_FS_FROZEN, &fs_info->flags);
	/*
	 * We don't need a barrier here, we'll wait for any transaction that
	 * could be in progress on other threads (and do delayed iputs that
	 * we want to avoid on a frozen filesystem), or do the commit
	 * ourselves.
	 */
	trans = FUNC2(root);
	if (FUNC0(trans)) {
		/* no transaction, don't bother */
		if (FUNC1(trans) == -ENOENT)
			return 0;
		return FUNC1(trans);
	}
	return FUNC3(trans);
}