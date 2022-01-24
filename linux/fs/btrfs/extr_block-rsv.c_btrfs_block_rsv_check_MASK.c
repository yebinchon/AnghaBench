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
struct btrfs_block_rsv {scalar_t__ reserved; int /*<<< orphan*/  lock; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct btrfs_block_rsv *block_rsv, int min_factor)
{
	u64 num_bytes = 0;
	int ret = -ENOSPC;

	if (!block_rsv)
		return 0;

	FUNC1(&block_rsv->lock);
	num_bytes = FUNC0(block_rsv->size, min_factor);
	if (block_rsv->reserved >= num_bytes)
		ret = 0;
	FUNC2(&block_rsv->lock);

	return ret;
}