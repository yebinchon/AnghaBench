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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int /*<<< orphan*/  type; int /*<<< orphan*/  offset; scalar_t__ objectid; } ;
struct TYPE_2__ {struct btrfs_root* quota_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_QGROUP_INFO_KEY ; 
 int /*<<< orphan*/  BTRFS_QGROUP_LIMIT_KEY ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 

__attribute__((used)) static int FUNC5(struct btrfs_trans_handle *trans, u64 qgroupid)
{
	int ret;
	struct btrfs_root *quota_root = trans->fs_info->quota_root;
	struct btrfs_path *path;
	struct btrfs_key key;

	path = FUNC0();
	if (!path)
		return -ENOMEM;

	key.objectid = 0;
	key.type = BTRFS_QGROUP_INFO_KEY;
	key.offset = qgroupid;
	ret = FUNC4(trans, quota_root, &key, path, -1, 1);
	if (ret < 0)
		goto out;

	if (ret > 0) {
		ret = -ENOENT;
		goto out;
	}

	ret = FUNC1(trans, quota_root, path);
	if (ret)
		goto out;

	FUNC3(path);

	key.type = BTRFS_QGROUP_LIMIT_KEY;
	ret = FUNC4(trans, quota_root, &key, path, -1, 1);
	if (ret < 0)
		goto out;

	if (ret > 0) {
		ret = -ENOENT;
		goto out;
	}

	ret = FUNC1(trans, quota_root, path);

out:
	FUNC2(path);
	return ret;
}