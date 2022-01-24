#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct btrfs_fs_info {TYPE_1__* fs_devices; int /*<<< orphan*/ * space_info_kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  fsid_kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  allocation_attrs ; 
 int /*<<< orphan*/  btrfs_attrs ; 
 int /*<<< orphan*/  btrfs_feature_attr_group ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(struct btrfs_fs_info *fs_info)
{
	FUNC1(fs_info);

	if (fs_info->space_info_kobj) {
		FUNC5(fs_info->space_info_kobj, allocation_attrs);
		FUNC3(fs_info->space_info_kobj);
		FUNC4(fs_info->space_info_kobj);
	}
	FUNC0(fs_info, false);
	FUNC6(&fs_info->fs_devices->fsid_kobj, &btrfs_feature_attr_group);
	FUNC5(&fs_info->fs_devices->fsid_kobj, btrfs_attrs);
	FUNC2(fs_info->fs_devices, NULL);
}