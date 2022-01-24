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
struct btrfs_fs_devices {int /*<<< orphan*/  kobj_unregister; int /*<<< orphan*/  fsid_kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct btrfs_fs_devices* FUNC2 (struct kobject*) ; 

__attribute__((used)) static void FUNC3(struct kobject *kobj)
{
	struct btrfs_fs_devices *fs_devs = FUNC2(kobj);

	FUNC1(&fs_devs->fsid_kobj, 0, sizeof(struct kobject));
	FUNC0(&fs_devs->kobj_unregister);
}