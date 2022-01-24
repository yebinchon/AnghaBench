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
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int /*<<< orphan*/  BTRFS_QGROUP_RSV_META_PREALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct btrfs_root*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,int) ; 

void FUNC5(struct btrfs_root *root, int num_bytes)
{
	struct btrfs_fs_info *fs_info = root->fs_info;

	if (!FUNC3(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags) ||
	    !FUNC0(root->root_key.objectid))
		return;
	/* Same as btrfs_qgroup_free_meta_prealloc() */
	num_bytes = FUNC2(root, num_bytes,
				      BTRFS_QGROUP_RSV_META_PREALLOC);
	FUNC4(root, num_bytes);
	FUNC1(fs_info, root->root_key.objectid, num_bytes);
}