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
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC1 () ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key const*,struct btrfs_path*,int,int) ; 

int FUNC5(struct btrfs_trans_handle *trans,
		   const struct btrfs_key *key)
{
	struct btrfs_root *root = trans->fs_info->tree_root;
	struct btrfs_path *path;
	int ret;

	path = FUNC1();
	if (!path)
		return -ENOMEM;
	ret = FUNC4(trans, root, key, path, -1, 1);
	if (ret < 0)
		goto out;

	FUNC0(ret != 0);

	ret = FUNC2(trans, root, path);
out:
	FUNC3(path);
	return ret;
}