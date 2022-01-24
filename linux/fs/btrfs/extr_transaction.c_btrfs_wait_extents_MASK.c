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
struct extent_io_tree {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_BTREE_ERR ; 
 int EIO ; 
 int FUNC0 (struct btrfs_fs_info*,struct extent_io_tree*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct btrfs_fs_info *fs_info,
		       struct extent_io_tree *dirty_pages)
{
	bool errors = false;
	int err;

	err = FUNC0(fs_info, dirty_pages);
	if (FUNC1(BTRFS_FS_BTREE_ERR, &fs_info->flags))
		errors = true;

	if (errors && !err)
		err = -EIO;
	return err;
}