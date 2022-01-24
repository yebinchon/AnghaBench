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
typedef  void* u64 ;
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {void* offset; int /*<<< orphan*/  type; void* objectid; } ;
struct TYPE_2__ {struct btrfs_root* quota_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_QGROUP_RELATION_KEY ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct btrfs_trans_handle *trans, u64 src,
				    u64 dst)
{
	int ret;
	struct btrfs_root *quota_root = trans->fs_info->quota_root;
	struct btrfs_path *path;
	struct btrfs_key key;

	path = FUNC0();
	if (!path)
		return -ENOMEM;

	key.objectid = src;
	key.type = BTRFS_QGROUP_RELATION_KEY;
	key.offset = dst;

	ret = FUNC2(trans, quota_root, path, &key, 0);

	FUNC3(path->nodes[0]);

	FUNC1(path);
	return ret;
}