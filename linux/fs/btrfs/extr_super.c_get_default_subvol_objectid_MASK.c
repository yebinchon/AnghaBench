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
struct btrfs_root {int dummy; } ;
struct btrfs_path {int leave_spinning; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int /*<<< orphan*/  super_copy; struct btrfs_root* tree_root; } ;
struct btrfs_dir_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_TREE_OBJECTID ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_dir_item*) ; 
 int FUNC1 (struct btrfs_dir_item*) ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct btrfs_dir_item*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 struct btrfs_dir_item* FUNC5 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct btrfs_fs_info *fs_info, u64 *objectid)
{
	struct btrfs_root *root = fs_info->tree_root;
	struct btrfs_dir_item *di;
	struct btrfs_path *path;
	struct btrfs_key location;
	u64 dir_id;

	path = FUNC2();
	if (!path)
		return -ENOMEM;
	path->leave_spinning = 1;

	/*
	 * Find the "default" dir item which points to the root item that we
	 * will mount by default if we haven't been given a specific subvolume
	 * to mount.
	 */
	dir_id = FUNC6(fs_info->super_copy);
	di = FUNC5(NULL, root, path, dir_id, "default", 7, 0);
	if (FUNC0(di)) {
		FUNC4(path);
		return FUNC1(di);
	}
	if (!di) {
		/*
		 * Ok the default dir item isn't there.  This is weird since
		 * it's always been there, but don't freak out, just try and
		 * mount the top-level subvolume.
		 */
		FUNC4(path);
		*objectid = BTRFS_FS_TREE_OBJECTID;
		return 0;
	}

	FUNC3(path->nodes[0], di, &location);
	FUNC4(path);
	*objectid = location.objectid;
	return 0;
}