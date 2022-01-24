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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  cleanup_work_sem; int /*<<< orphan*/  cleaner_kthread; int /*<<< orphan*/  cleaner_mutex; struct btrfs_root* tree_root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 struct btrfs_trans_handle* FUNC3 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct btrfs_fs_info *fs_info)
{
	struct btrfs_root *root = fs_info->tree_root;
	struct btrfs_trans_handle *trans;

	FUNC6(&fs_info->cleaner_mutex);
	FUNC4(fs_info);
	FUNC7(&fs_info->cleaner_mutex);
	FUNC9(fs_info->cleaner_kthread);

	/* wait until ongoing cleanup work done */
	FUNC5(&fs_info->cleanup_work_sem);
	FUNC8(&fs_info->cleanup_work_sem);

	trans = FUNC3(root);
	if (FUNC0(trans))
		return FUNC1(trans);
	return FUNC2(trans);
}