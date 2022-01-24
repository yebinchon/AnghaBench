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
struct btrfs_super_block {int dummy; } ;
struct btrfs_fs_info {struct btrfs_super_block* super_copy; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_DATA ; 
 int BTRFS_BLOCK_GROUP_METADATA ; 
 int BTRFS_BLOCK_GROUP_SYSTEM ; 
 int BTRFS_FEATURE_INCOMPAT_MIXED_GROUPS ; 
 int EINVAL ; 
 int FUNC0 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_super_block*) ; 
 int FUNC2 (struct btrfs_fs_info*,int) ; 

int FUNC3(struct btrfs_fs_info *fs_info)
{
	struct btrfs_super_block *disk_super;
	u64 features;
	u64 flags;
	int mixed = 0;
	int ret;

	disk_super = fs_info->super_copy;
	if (!FUNC1(disk_super))
		return -EINVAL;

	features = FUNC0(disk_super);
	if (features & BTRFS_FEATURE_INCOMPAT_MIXED_GROUPS)
		mixed = 1;

	flags = BTRFS_BLOCK_GROUP_SYSTEM;
	ret = FUNC2(fs_info, flags);
	if (ret)
		goto out;

	if (mixed) {
		flags = BTRFS_BLOCK_GROUP_METADATA | BTRFS_BLOCK_GROUP_DATA;
		ret = FUNC2(fs_info, flags);
	} else {
		flags = BTRFS_BLOCK_GROUP_METADATA;
		ret = FUNC2(fs_info, flags);
		if (ret)
			goto out;

		flags = BTRFS_BLOCK_GROUP_DATA;
		ret = FUNC2(fs_info, flags);
	}
out:
	return ret;
}