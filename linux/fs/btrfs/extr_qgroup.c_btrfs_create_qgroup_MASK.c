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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_qgroup {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  qgroup_ioctl_lock; int /*<<< orphan*/  qgroup_lock; struct btrfs_root* quota_root; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct btrfs_qgroup*) ; 
 int FUNC1 (struct btrfs_qgroup*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ) ; 
 struct btrfs_qgroup* FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct btrfs_qgroup* FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct btrfs_trans_handle *trans, u64 qgroupid)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_root *quota_root;
	struct btrfs_qgroup *qgroup;
	int ret = 0;

	FUNC5(&fs_info->qgroup_ioctl_lock);
	quota_root = fs_info->quota_root;
	if (!quota_root) {
		ret = -EINVAL;
		goto out;
	}
	qgroup = FUNC4(fs_info, qgroupid);
	if (qgroup) {
		ret = -EEXIST;
		goto out;
	}

	ret = FUNC2(trans, quota_root, qgroupid);
	if (ret)
		goto out;

	FUNC7(&fs_info->qgroup_lock);
	qgroup = FUNC3(fs_info, qgroupid);
	FUNC8(&fs_info->qgroup_lock);

	if (FUNC0(qgroup))
		ret = FUNC1(qgroup);
out:
	FUNC6(&fs_info->qgroup_ioctl_lock);
	return ret;
}