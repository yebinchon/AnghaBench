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
struct btrfs_block_rsv {scalar_t__ space_info; scalar_t__ size; scalar_t__ reserved; int /*<<< orphan*/  lock; scalar_t__ full; } ;
struct btrfs_fs_info {struct btrfs_block_rsv global_block_rsv; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_rsv*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct btrfs_fs_info *fs_info,
			     struct btrfs_block_rsv *dest, u64 num_bytes,
			     int min_factor)
{
	struct btrfs_block_rsv *global_rsv = &fs_info->global_block_rsv;
	u64 min_bytes;

	if (global_rsv->space_info != dest->space_info)
		return -ENOSPC;

	FUNC2(&global_rsv->lock);
	min_bytes = FUNC1(global_rsv->size, min_factor);
	if (global_rsv->reserved < min_bytes + num_bytes) {
		FUNC3(&global_rsv->lock);
		return -ENOSPC;
	}
	global_rsv->reserved -= num_bytes;
	if (global_rsv->reserved < global_rsv->size)
		global_rsv->full = 0;
	FUNC3(&global_rsv->lock);

	FUNC0(dest, num_bytes, true);
	return 0;
}