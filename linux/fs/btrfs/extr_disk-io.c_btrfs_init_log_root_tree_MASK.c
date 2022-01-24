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
struct btrfs_fs_info {struct btrfs_root* log_root_tree; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_root*) ; 
 int FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_root*) ; 
 struct btrfs_root* FUNC3 (struct btrfs_trans_handle*,struct btrfs_fs_info*) ; 

int FUNC4(struct btrfs_trans_handle *trans,
			     struct btrfs_fs_info *fs_info)
{
	struct btrfs_root *log_root;

	log_root = FUNC3(trans, fs_info);
	if (FUNC0(log_root))
		return FUNC1(log_root);
	FUNC2(fs_info->log_root_tree);
	fs_info->log_root_tree = log_root;
	return 0;
}