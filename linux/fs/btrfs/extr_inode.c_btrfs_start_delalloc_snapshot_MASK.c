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
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  fs_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_STATE_ERROR ; 
 int EROFS ; 
 int FUNC0 (struct btrfs_root*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct btrfs_root *root)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	int ret;

	if (FUNC1(BTRFS_FS_STATE_ERROR, &fs_info->fs_state))
		return -EROFS;

	ret = FUNC0(root, -1, true);
	if (ret > 0)
		ret = 0;
	return ret;
}