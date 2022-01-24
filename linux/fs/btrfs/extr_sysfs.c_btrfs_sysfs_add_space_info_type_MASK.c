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
struct btrfs_space_info {int /*<<< orphan*/  kobj; int /*<<< orphan*/  flags; } ;
struct btrfs_fs_info {int /*<<< orphan*/  space_info_kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  space_info_ktype ; 

int FUNC3(struct btrfs_fs_info *fs_info,
				    struct btrfs_space_info *space_info)
{
	int ret;

	ret = FUNC1(&space_info->kobj, &space_info_ktype,
				   fs_info->space_info_kobj, "%s",
				   FUNC0(space_info->flags));
	if (ret) {
		FUNC2(&space_info->kobj);
		return ret;
	}

	return 0;
}