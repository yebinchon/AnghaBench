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
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {int /*<<< orphan*/  state; TYPE_1__ root_key; } ;
struct btrfs_fs_info {int /*<<< orphan*/  fs_roots_radix_lock; int /*<<< orphan*/  fs_roots_radix; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_IN_RADIX ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned long,struct btrfs_root*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct btrfs_fs_info *fs_info,
			 struct btrfs_root *root)
{
	int ret;

	ret = FUNC1(GFP_NOFS);
	if (ret)
		return ret;

	FUNC4(&fs_info->fs_roots_radix_lock);
	ret = FUNC0(&fs_info->fs_roots_radix,
				(unsigned long)root->root_key.objectid,
				root);
	if (ret == 0)
		FUNC3(BTRFS_ROOT_IN_RADIX, &root->state);
	FUNC5(&fs_info->fs_roots_radix_lock);
	FUNC2();

	return ret;
}