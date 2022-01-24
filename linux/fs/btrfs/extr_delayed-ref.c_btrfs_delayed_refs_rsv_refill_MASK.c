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
struct btrfs_block_rsv {scalar_t__ reserved; scalar_t__ size; int /*<<< orphan*/  lock; } ;
struct btrfs_fs_info {int /*<<< orphan*/  extent_root; struct btrfs_block_rsv delayed_refs_rsv; } ;
typedef  enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_rsv*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct btrfs_fs_info*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct btrfs_block_rsv*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC7(struct btrfs_fs_info *fs_info,
				  enum btrfs_reserve_flush_enum flush)
{
	struct btrfs_block_rsv *block_rsv = &fs_info->delayed_refs_rsv;
	u64 limit = FUNC1(fs_info, 1);
	u64 num_bytes = 0;
	int ret = -ENOSPC;

	FUNC4(&block_rsv->lock);
	if (block_rsv->reserved < block_rsv->size) {
		num_bytes = block_rsv->size - block_rsv->reserved;
		num_bytes = FUNC3(num_bytes, limit);
	}
	FUNC5(&block_rsv->lock);

	if (!num_bytes)
		return 0;

	ret = FUNC2(fs_info->extent_root, block_rsv,
					   num_bytes, flush);
	if (ret)
		return ret;
	FUNC0(block_rsv, num_bytes, 0);
	FUNC6(fs_info, "delayed_refs_rsv",
				      0, num_bytes, 1);
	return 0;
}