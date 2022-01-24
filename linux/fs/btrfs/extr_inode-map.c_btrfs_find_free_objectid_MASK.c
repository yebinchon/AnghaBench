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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {scalar_t__ highest_objectid; int /*<<< orphan*/  objectid_mutex; TYPE_1__ root_key; int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 scalar_t__ BTRFS_LAST_FREE_OBJECTID ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct btrfs_root *root, u64 *objectid)
{
	int ret;
	FUNC1(&root->objectid_mutex);

	if (FUNC3(root->highest_objectid >= BTRFS_LAST_FREE_OBJECTID)) {
		FUNC0(root->fs_info,
			   "the objectid of root %llu reaches its highest value",
			   root->root_key.objectid);
		ret = -ENOSPC;
		goto out;
	}

	*objectid = ++root->highest_objectid;
	ret = 0;
out:
	FUNC2(&root->objectid_mutex);
	return ret;
}