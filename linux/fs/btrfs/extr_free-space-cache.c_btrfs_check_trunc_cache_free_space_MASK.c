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
typedef  scalar_t__ u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_rsv {scalar_t__ reserved; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct btrfs_fs_info*,int) ; 
 scalar_t__ FUNC1 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct btrfs_fs_info *fs_info,
				       struct btrfs_block_rsv *rsv)
{
	u64 needed_bytes;
	int ret;

	/* 1 for slack space, 1 for updating the inode */
	needed_bytes = FUNC0(fs_info, 1) +
		FUNC1(fs_info, 1);

	FUNC2(&rsv->lock);
	if (rsv->reserved < needed_bytes)
		ret = -ENOSPC;
	else
		ret = 0;
	FUNC3(&rsv->lock);
	return ret;
}