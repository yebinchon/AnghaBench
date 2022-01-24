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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ type; int /*<<< orphan*/  objectid; } ;
struct btrfs_dir_item {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_ROOT_ITEM_KEY ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_dir_item*) ; 
 int FUNC1 (struct btrfs_dir_item*) ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct btrfs_dir_item*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct btrfs_dir_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 struct btrfs_dir_item* FUNC6 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct btrfs_root *root,
				 u64 dir, const char *name, int name_len,
				 u64 *found_inode,
				 u8 *found_type)
{
	int ret = 0;
	struct btrfs_dir_item *di;
	struct btrfs_key key;
	struct btrfs_path *path;

	path = FUNC2();
	if (!path)
		return -ENOMEM;

	di = FUNC6(NULL, root, path,
			dir, name, name_len, 0);
	if (FUNC0(di)) {
		ret = di ? FUNC1(di) : -ENOENT;
		goto out;
	}
	FUNC3(path->nodes[0], di, &key);
	if (key.type == BTRFS_ROOT_ITEM_KEY) {
		ret = -ENOENT;
		goto out;
	}
	*found_inode = key.objectid;
	*found_type = FUNC4(path->nodes[0], di);

out:
	FUNC5(path);
	return ret;
}