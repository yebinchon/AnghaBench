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
struct btrfs_root {int /*<<< orphan*/  state; int /*<<< orphan*/  root_item; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; int /*<<< orphan*/  type; } ;
struct btrfs_fs_info {struct btrfs_root* tree_root; struct btrfs_root* free_space_root; struct btrfs_root* uuid_root; struct btrfs_root* quota_root; struct btrfs_root* csum_root; struct btrfs_root* dev_root; struct btrfs_root* chunk_root; struct btrfs_root* extent_root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CHUNK_TREE_OBJECTID ; 
 scalar_t__ BTRFS_CSUM_TREE_OBJECTID ; 
 scalar_t__ BTRFS_DEV_TREE_OBJECTID ; 
 scalar_t__ BTRFS_EXTENT_TREE_OBJECTID ; 
 scalar_t__ BTRFS_FREE_SPACE_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_ORPHAN_ITEM_KEY ; 
 scalar_t__ BTRFS_ORPHAN_OBJECTID ; 
 scalar_t__ BTRFS_QUOTA_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_ROOT_ORPHAN_ITEM_INSERTED ; 
 scalar_t__ BTRFS_ROOT_TREE_OBJECTID ; 
 scalar_t__ BTRFS_UUID_TREE_OBJECTID ; 
 int EEXIST ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct btrfs_root* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct btrfs_root*) ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int FUNC5 (struct btrfs_root*) ; 
 int FUNC6 (struct btrfs_fs_info*,struct btrfs_root*) ; 
 struct btrfs_root* FUNC7 (struct btrfs_fs_info*,scalar_t__) ; 
 struct btrfs_root* FUNC8 (struct btrfs_root*,struct btrfs_key*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct btrfs_root *FUNC12(struct btrfs_fs_info *fs_info,
				     struct btrfs_key *location,
				     bool check_ref)
{
	struct btrfs_root *root;
	struct btrfs_path *path;
	struct btrfs_key key;
	int ret;

	if (location->objectid == BTRFS_ROOT_TREE_OBJECTID)
		return fs_info->tree_root;
	if (location->objectid == BTRFS_EXTENT_TREE_OBJECTID)
		return fs_info->extent_root;
	if (location->objectid == BTRFS_CHUNK_TREE_OBJECTID)
		return fs_info->chunk_root;
	if (location->objectid == BTRFS_DEV_TREE_OBJECTID)
		return fs_info->dev_root;
	if (location->objectid == BTRFS_CSUM_TREE_OBJECTID)
		return fs_info->csum_root;
	if (location->objectid == BTRFS_QUOTA_TREE_OBJECTID)
		return fs_info->quota_root ? fs_info->quota_root :
					     FUNC0(-ENOENT);
	if (location->objectid == BTRFS_UUID_TREE_OBJECTID)
		return fs_info->uuid_root ? fs_info->uuid_root :
					    FUNC0(-ENOENT);
	if (location->objectid == BTRFS_FREE_SPACE_TREE_OBJECTID)
		return fs_info->free_space_root ? fs_info->free_space_root :
						  FUNC0(-ENOENT);
again:
	root = FUNC7(fs_info, location->objectid);
	if (root) {
		if (check_ref && FUNC9(&root->root_item) == 0)
			return FUNC0(-ENOENT);
		return root;
	}

	root = FUNC8(fs_info->tree_root, location);
	if (FUNC1(root))
		return root;

	if (check_ref && FUNC9(&root->root_item) == 0) {
		ret = -ENOENT;
		goto fail;
	}

	ret = FUNC5(root);
	if (ret)
		goto fail;

	path = FUNC2();
	if (!path) {
		ret = -ENOMEM;
		goto fail;
	}
	key.objectid = BTRFS_ORPHAN_OBJECTID;
	key.type = BTRFS_ORPHAN_ITEM_KEY;
	key.offset = location->objectid;

	ret = FUNC10(NULL, fs_info->tree_root, &key, path, 0, 0);
	FUNC4(path);
	if (ret < 0)
		goto fail;
	if (ret == 0)
		FUNC11(BTRFS_ROOT_ORPHAN_ITEM_INSERTED, &root->state);

	ret = FUNC6(fs_info, root);
	if (ret) {
		if (ret == -EEXIST) {
			FUNC3(root);
			goto again;
		}
		goto fail;
	}
	return root;
fail:
	FUNC3(root);
	return FUNC0(ret);
}