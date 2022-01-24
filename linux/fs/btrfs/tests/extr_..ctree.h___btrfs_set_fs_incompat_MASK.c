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
struct btrfs_fs_info {int /*<<< orphan*/  super_lock; struct btrfs_super_block* super_copy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_super_block*,int) ; 
 int FUNC2 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct btrfs_fs_info *fs_info,
					   u64 flag, const char* name)
{
	struct btrfs_super_block *disk_super;
	u64 features;

	disk_super = fs_info->super_copy;
	features = FUNC2(disk_super);
	if (!(features & flag)) {
		FUNC3(&fs_info->super_lock);
		features = FUNC2(disk_super);
		if (!(features & flag)) {
			features |= flag;
			FUNC1(disk_super, features);
			FUNC0(fs_info,
				"setting incompat feature flag for %s (0x%llx)",
				name, flag);
		}
		FUNC4(&fs_info->super_lock);
	}
}