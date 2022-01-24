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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  commit_root; int /*<<< orphan*/  node; int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  root_key; } ;
struct btrfs_fs_info {struct btrfs_root* free_space_root; struct btrfs_root* tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_SPACE_TREE ; 
 int /*<<< orphan*/  FREE_SPACE_TREE_VALID ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btrfs_trans_handle*) ; 
 int FUNC6 (struct btrfs_trans_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct btrfs_trans_handle* FUNC9 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct btrfs_fs_info *fs_info)
{
	struct btrfs_trans_handle *trans;
	struct btrfs_root *tree_root = fs_info->tree_root;
	struct btrfs_root *free_space_root = fs_info->free_space_root;
	int ret;

	trans = FUNC9(tree_root, 0);
	if (FUNC0(trans))
		return FUNC1(trans);

	FUNC4(fs_info, FREE_SPACE_TREE);
	FUNC4(fs_info, FREE_SPACE_TREE_VALID);
	fs_info->free_space_root = NULL;

	ret = FUNC12(trans, free_space_root);
	if (ret)
		goto abort;

	ret = FUNC6(trans, &free_space_root->root_key);
	if (ret)
		goto abort;

	FUNC15(&free_space_root->dirty_list);

	FUNC10(free_space_root->node);
	FUNC3(free_space_root->node);
	FUNC11(free_space_root->node);
	FUNC8(trans, free_space_root, free_space_root->node,
			      0, 1);

	FUNC13(free_space_root->node);
	FUNC13(free_space_root->commit_root);
	FUNC14(free_space_root);

	return FUNC5(trans);

abort:
	FUNC2(trans, ret);
	FUNC7(trans);
	return ret;
}