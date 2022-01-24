#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  kset; } ;
struct btrfs_fs_devices {TYPE_1__ fsid_kobj; int /*<<< orphan*/  fsid; int /*<<< orphan*/  kobj_unregister; } ;

/* Variables and functions */
 int /*<<< orphan*/  btrfs_kset ; 
 int /*<<< orphan*/  btrfs_ktype ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,struct kobject*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(struct btrfs_fs_devices *fs_devs,
				struct kobject *parent)
{
	int error;

	FUNC0(&fs_devs->kobj_unregister);
	fs_devs->fsid_kobj.kset = btrfs_kset;
	error = FUNC1(&fs_devs->fsid_kobj,
				&btrfs_ktype, parent, "%pU", fs_devs->fsid);
	if (error) {
		FUNC2(&fs_devs->fsid_kobj);
		return error;
	}

	return 0;
}