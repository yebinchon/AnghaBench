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
struct btrfs_fs_info {int avail_data_alloc_bits; int avail_metadata_alloc_bits; int avail_system_alloc_bits; int /*<<< orphan*/  profiles_lock; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_DATA ; 
 int BTRFS_BLOCK_GROUP_METADATA ; 
 int BTRFS_BLOCK_GROUP_SYSTEM ; 
 int BTRFS_EXTENDED_PROFILE_MASK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct btrfs_fs_info *fs_info, u64 flags)
{
	u64 extra_flags = FUNC0(flags) &
				BTRFS_EXTENDED_PROFILE_MASK;

	FUNC1(&fs_info->profiles_lock);
	if (flags & BTRFS_BLOCK_GROUP_DATA)
		fs_info->avail_data_alloc_bits &= ~extra_flags;
	if (flags & BTRFS_BLOCK_GROUP_METADATA)
		fs_info->avail_metadata_alloc_bits &= ~extra_flags;
	if (flags & BTRFS_BLOCK_GROUP_SYSTEM)
		fs_info->avail_system_alloc_bits &= ~extra_flags;
	FUNC2(&fs_info->profiles_lock);
}