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
typedef  int u64 ;
struct btrfs_fs_info {int nodesize; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_fs_info*,int) ; 
 int FUNC1 (struct btrfs_fs_info*,int) ; 
 int FUNC2 (struct btrfs_fs_info*,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct btrfs_fs_info *fs_info,
				    u64 num_bytes, u64 *meta_reserve,
				    u64 *qgroup_reserve)
{
	u64 nr_extents = FUNC3(num_bytes);
	u64 csum_leaves = FUNC2(fs_info, num_bytes);
	u64 inode_update = FUNC1(fs_info, 1);

	*meta_reserve = FUNC0(fs_info,
						nr_extents + csum_leaves);

	/*
	 * finish_ordered_io has to update the inode, so add the space required
	 * for an inode update.
	 */
	*meta_reserve += inode_update;
	*qgroup_reserve = nr_extents * fs_info->nodesize;
}