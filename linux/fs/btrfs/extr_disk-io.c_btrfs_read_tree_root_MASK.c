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
struct btrfs_root {int /*<<< orphan*/  commit_root; int /*<<< orphan*/  node; int /*<<< orphan*/  root_item; int /*<<< orphan*/  root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct btrfs_root* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*,struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct btrfs_path* FUNC4 () ; 
 struct btrfs_root* FUNC5 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct btrfs_root *FUNC16(struct btrfs_root *tree_root,
					       struct btrfs_key *key)
{
	struct btrfs_root *root;
	struct btrfs_fs_info *fs_info = tree_root->fs_info;
	struct btrfs_path *path;
	u64 generation;
	int ret;
	int level;

	path = FUNC4();
	if (!path)
		return FUNC0(-ENOMEM);

	root = FUNC5(fs_info, GFP_NOFS);
	if (!root) {
		ret = -ENOMEM;
		goto alloc_fail;
	}

	FUNC3(root, fs_info, key->objectid);

	ret = FUNC7(tree_root, key, path,
			      &root->root_item, &root->root_key);
	if (ret) {
		if (ret > 0)
			ret = -ENOENT;
		goto find_fail;
	}

	generation = FUNC10(&root->root_item);
	level = FUNC11(&root->root_item);
	root->node = FUNC15(fs_info,
				     FUNC9(&root->root_item),
				     generation, level, NULL);
	if (FUNC1(root->node)) {
		ret = FUNC2(root->node);
		goto find_fail;
	} else if (!FUNC6(root->node, generation, 0)) {
		ret = -EIO;
		FUNC13(root->node);
		goto find_fail;
	}
	root->commit_root = FUNC12(root);
out:
	FUNC8(path);
	return root;

find_fail:
	FUNC14(root);
alloc_fail:
	root = FUNC0(ret);
	goto out;
}