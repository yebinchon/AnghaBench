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
struct btrfs_root {int /*<<< orphan*/  state; } ;
struct btrfs_key {int /*<<< orphan*/  objectid; scalar_t__ offset; int /*<<< orphan*/  type; } ;
struct btrfs_fs_info {struct btrfs_root* free_space_root; struct btrfs_root* uuid_root; struct btrfs_root* quota_root; int /*<<< orphan*/  flags; struct btrfs_root* csum_root; struct btrfs_root* dev_root; struct btrfs_root* extent_root; struct btrfs_root* tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_CSUM_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_DEV_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_EXTENT_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_FREE_SPACE_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int /*<<< orphan*/  BTRFS_QUOTA_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ROOT_TRACK_DIRTY ; 
 int /*<<< orphan*/  BTRFS_UUID_TREE_OBJECTID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FREE_SPACE_TREE ; 
 scalar_t__ FUNC1 (struct btrfs_root*) ; 
 int FUNC2 (struct btrfs_root*) ; 
 scalar_t__ FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*) ; 
 struct btrfs_root* FUNC5 (struct btrfs_root*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct btrfs_fs_info *fs_info)
{
	struct btrfs_root *tree_root = fs_info->tree_root;
	struct btrfs_root *root;
	struct btrfs_key location;
	int ret;

	FUNC0(!fs_info->tree_root);

	location.objectid = BTRFS_EXTENT_TREE_OBJECTID;
	location.type = BTRFS_ROOT_ITEM_KEY;
	location.offset = 0;

	root = FUNC5(tree_root, &location);
	if (FUNC1(root)) {
		ret = FUNC2(root);
		goto out;
	}
	FUNC7(BTRFS_ROOT_TRACK_DIRTY, &root->state);
	fs_info->extent_root = root;

	location.objectid = BTRFS_DEV_TREE_OBJECTID;
	root = FUNC5(tree_root, &location);
	if (FUNC1(root)) {
		ret = FUNC2(root);
		goto out;
	}
	FUNC7(BTRFS_ROOT_TRACK_DIRTY, &root->state);
	fs_info->dev_root = root;
	FUNC4(fs_info);

	location.objectid = BTRFS_CSUM_TREE_OBJECTID;
	root = FUNC5(tree_root, &location);
	if (FUNC1(root)) {
		ret = FUNC2(root);
		goto out;
	}
	FUNC7(BTRFS_ROOT_TRACK_DIRTY, &root->state);
	fs_info->csum_root = root;

	location.objectid = BTRFS_QUOTA_TREE_OBJECTID;
	root = FUNC5(tree_root, &location);
	if (!FUNC1(root)) {
		FUNC7(BTRFS_ROOT_TRACK_DIRTY, &root->state);
		FUNC7(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags);
		fs_info->quota_root = root;
	}

	location.objectid = BTRFS_UUID_TREE_OBJECTID;
	root = FUNC5(tree_root, &location);
	if (FUNC1(root)) {
		ret = FUNC2(root);
		if (ret != -ENOENT)
			goto out;
	} else {
		FUNC7(BTRFS_ROOT_TRACK_DIRTY, &root->state);
		fs_info->uuid_root = root;
	}

	if (FUNC3(fs_info, FREE_SPACE_TREE)) {
		location.objectid = BTRFS_FREE_SPACE_TREE_OBJECTID;
		root = FUNC5(tree_root, &location);
		if (FUNC1(root)) {
			ret = FUNC2(root);
			goto out;
		}
		FUNC7(BTRFS_ROOT_TRACK_DIRTY, &root->state);
		fs_info->free_space_root = root;
	}

	return 0;
out:
	FUNC6(fs_info, "failed to read root (objectid=%llu): %d",
		   location.objectid, ret);
	return ret;
}