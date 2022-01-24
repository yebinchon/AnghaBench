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
struct btrfs_fs_info {int /*<<< orphan*/  nodesize; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  enum btrfs_qgroup_rsv_type { ____Placeholder_btrfs_qgroup_rsv_type } btrfs_qgroup_rsv_type ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btrfs_root*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_root*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct btrfs_root *root, int num_bytes,
			      enum btrfs_qgroup_rsv_type type)
{
	struct btrfs_fs_info *fs_info = root->fs_info;

	if (!FUNC5(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags) ||
	    !FUNC2(root->root_key.objectid))
		return;

	/*
	 * reservation for META_PREALLOC can happen before quota is enabled,
	 * which can lead to underflow.
	 * Here ensure we will only free what we really have reserved.
	 */
	num_bytes = FUNC4(root, num_bytes, type);
	FUNC0(num_bytes != FUNC3(num_bytes, fs_info->nodesize));
	FUNC6(root, -(s64)num_bytes, type);
	FUNC1(fs_info, root->root_key.objectid,
				  num_bytes, type);
}