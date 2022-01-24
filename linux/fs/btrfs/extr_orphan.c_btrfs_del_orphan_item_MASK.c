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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ORPHAN_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ORPHAN_OBJECTID ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 

int FUNC4(struct btrfs_trans_handle *trans,
			  struct btrfs_root *root, u64 offset)
{
	struct btrfs_path *path;
	struct btrfs_key key;
	int ret = 0;

	key.objectid = BTRFS_ORPHAN_OBJECTID;
	key.type = BTRFS_ORPHAN_ITEM_KEY;
	key.offset = offset;

	path = FUNC0();
	if (!path)
		return -ENOMEM;

	ret = FUNC3(trans, root, &key, path, -1, 1);
	if (ret < 0)
		goto out;
	if (ret) { /* JDM: Really? */
		ret = -ENOENT;
		goto out;
	}

	ret = FUNC1(trans, root, path);

out:
	FUNC2(path);
	return ret;
}