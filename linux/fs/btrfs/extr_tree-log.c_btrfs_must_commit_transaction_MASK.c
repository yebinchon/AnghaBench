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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_inode {scalar_t__ last_unlink_trans; int /*<<< orphan*/  log_mutex; TYPE_1__* root; } ;
struct btrfs_fs_info {scalar_t__ last_trans_committed; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct btrfs_trans_handle *trans,
					  struct btrfs_inode *inode)
{
	struct btrfs_fs_info *fs_info = inode->root->fs_info;
	bool ret = false;

	FUNC1(&inode->log_mutex);
	if (inode->last_unlink_trans > fs_info->last_trans_committed) {
		/*
		 * Make sure any commits to the log are forced to be full
		 * commits.
		 */
		FUNC0(trans);
		ret = true;
	}
	FUNC2(&inode->log_mutex);

	return ret;
}