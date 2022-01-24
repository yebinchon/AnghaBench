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
struct kobject {int dummy; } ;
struct btrfs_fs_info {struct kobject* space_info_kobj; struct btrfs_fs_devices* fs_devices; } ;
struct btrfs_fs_devices {struct kobject fsid_kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  allocation_attrs ; 
 int /*<<< orphan*/  btrfs_attrs ; 
 int /*<<< orphan*/  btrfs_debug_feature_attr_group ; 
 int /*<<< orphan*/  btrfs_feature_attr_group ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*) ; 
 int FUNC2 (struct btrfs_fs_devices*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_devices*,int /*<<< orphan*/ *) ; 
 struct kobject* FUNC5 (char*,struct kobject*) ; 
 int FUNC6 (struct kobject*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct kobject*,int /*<<< orphan*/ *) ; 

int FUNC8(struct btrfs_fs_info *fs_info)
{
	int error;
	struct btrfs_fs_devices *fs_devs = fs_info->fs_devices;
	struct kobject *fsid_kobj = &fs_devs->fsid_kobj;

	FUNC1(fs_info);

	error = FUNC2(fs_devs, NULL);
	if (error)
		return error;

	error = FUNC6(fsid_kobj, btrfs_attrs);
	if (error) {
		FUNC4(fs_devs, NULL);
		return error;
	}

	error = FUNC7(fsid_kobj,
				   &btrfs_feature_attr_group);
	if (error)
		goto failure;

#ifdef CONFIG_BTRFS_DEBUG
	error = sysfs_create_group(fsid_kobj,
				   &btrfs_debug_feature_attr_group);
	if (error)
		goto failure;
#endif

	error = FUNC0(fs_info, true);
	if (error)
		goto failure;

	fs_info->space_info_kobj = FUNC5("allocation",
						  fsid_kobj);
	if (!fs_info->space_info_kobj) {
		error = -ENOMEM;
		goto failure;
	}

	error = FUNC6(fs_info->space_info_kobj, allocation_attrs);
	if (error)
		goto failure;

	return 0;
failure:
	FUNC3(fs_info);
	return error;
}