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
struct btrfs_root {int dummy; } ;
struct btrfs_block_rsv {scalar_t__ reserved; int /*<<< orphan*/  lock; } ;
typedef  enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_rsv*,scalar_t__,int) ; 
 int FUNC1 (struct btrfs_root*,struct btrfs_block_rsv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct btrfs_root *root,
			   struct btrfs_block_rsv *block_rsv, u64 min_reserved,
			   enum btrfs_reserve_flush_enum flush)
{
	u64 num_bytes = 0;
	int ret = -ENOSPC;

	if (!block_rsv)
		return 0;

	FUNC2(&block_rsv->lock);
	num_bytes = min_reserved;
	if (block_rsv->reserved >= num_bytes)
		ret = 0;
	else
		num_bytes -= block_rsv->reserved;
	FUNC3(&block_rsv->lock);

	if (!ret)
		return 0;

	ret = FUNC1(root, block_rsv, num_bytes, flush);
	if (!ret) {
		FUNC0(block_rsv, num_bytes, false);
		return 0;
	}

	return ret;
}