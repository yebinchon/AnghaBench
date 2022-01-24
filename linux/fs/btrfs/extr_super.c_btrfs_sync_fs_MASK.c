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
struct super_block {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {scalar_t__ pending_changes; TYPE_1__* btree_inode; struct btrfs_root* tree_root; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  U64_MAX ; 
 struct btrfs_trans_handle* FUNC2 (struct btrfs_root*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 struct btrfs_fs_info* FUNC4 (struct super_block*) ; 
 struct btrfs_trans_handle* FUNC5 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 scalar_t__ FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,int) ; 

int FUNC11(struct super_block *sb, int wait)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_fs_info *fs_info = FUNC4(sb);
	struct btrfs_root *root = fs_info->tree_root;

	FUNC10(fs_info, wait);

	if (!wait) {
		FUNC7(fs_info->btree_inode->i_mapping);
		return 0;
	}

	FUNC6(fs_info, U64_MAX, 0, (u64)-1);

	trans = FUNC2(root);
	if (FUNC0(trans)) {
		/* no transaction, don't bother */
		if (FUNC1(trans) == -ENOENT) {
			/*
			 * Exit unless we have some pending changes
			 * that need to go through commit
			 */
			if (fs_info->pending_changes == 0)
				return 0;
			/*
			 * A non-blocking test if the fs is frozen. We must not
			 * start a new transaction here otherwise a deadlock
			 * happens. The pending operations are delayed to the
			 * next commit after thawing.
			 */
			if (FUNC9(sb))
				FUNC8(sb);
			else
				return 0;
			trans = FUNC5(root, 0);
		}
		if (FUNC0(trans))
			return FUNC1(trans);
	}
	return FUNC3(trans);
}