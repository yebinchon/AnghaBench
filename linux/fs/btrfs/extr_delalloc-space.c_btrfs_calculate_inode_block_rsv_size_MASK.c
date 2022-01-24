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
typedef  unsigned int u64 ;
struct btrfs_block_rsv {unsigned int size; unsigned int qgroup_rsv_size; int /*<<< orphan*/  lock; } ;
struct btrfs_inode {unsigned int outstanding_extents; int /*<<< orphan*/  csum_bytes; int /*<<< orphan*/  lock; struct btrfs_block_rsv block_rsv; } ;
struct btrfs_fs_info {unsigned int nodesize; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct btrfs_fs_info*,unsigned int) ; 
 scalar_t__ FUNC1 (struct btrfs_fs_info*,int) ; 
 unsigned int FUNC2 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct btrfs_fs_info *fs_info,
						 struct btrfs_inode *inode)
{
	struct btrfs_block_rsv *block_rsv = &inode->block_rsv;
	u64 reserve_size = 0;
	u64 qgroup_rsv_size = 0;
	u64 csum_leaves;
	unsigned outstanding_extents;

	FUNC3(&inode->lock);
	outstanding_extents = inode->outstanding_extents;

	/*
	 * Insert size for the number of outstanding extents, 1 normal size for
	 * updating the inode.
	 */
	if (outstanding_extents) {
		reserve_size = FUNC0(fs_info,
						outstanding_extents);
		reserve_size += FUNC1(fs_info, 1);
	}
	csum_leaves = FUNC2(fs_info,
						 inode->csum_bytes);
	reserve_size += FUNC0(fs_info,
							csum_leaves);
	/*
	 * For qgroup rsv, the calculation is very simple:
	 * account one nodesize for each outstanding extent
	 *
	 * This is overestimating in most cases.
	 */
	qgroup_rsv_size = (u64)outstanding_extents * fs_info->nodesize;

	FUNC4(&block_rsv->lock);
	block_rsv->size = reserve_size;
	block_rsv->qgroup_rsv_size = qgroup_rsv_size;
	FUNC5(&block_rsv->lock);
}