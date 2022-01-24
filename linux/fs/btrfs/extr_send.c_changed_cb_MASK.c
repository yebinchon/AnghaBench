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
struct send_ctx {int /*<<< orphan*/  ignore_cur_inode; struct btrfs_key* cmp_key; struct btrfs_path* right_path; struct btrfs_path* left_path; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; } ;
typedef  enum btrfs_compare_tree_result { ____Placeholder_btrfs_compare_tree_result } btrfs_compare_tree_result ;

/* Variables and functions */
 int BTRFS_COMPARE_TREE_CHANGED ; 
 int BTRFS_COMPARE_TREE_SAME ; 
 scalar_t__ BTRFS_EXTENT_DATA_KEY ; 
 scalar_t__ BTRFS_FREE_INO_OBJECTID ; 
 scalar_t__ BTRFS_FREE_SPACE_OBJECTID ; 
 scalar_t__ BTRFS_INODE_EXTREF_KEY ; 
 scalar_t__ BTRFS_INODE_ITEM_KEY ; 
 scalar_t__ BTRFS_INODE_REF_KEY ; 
 scalar_t__ BTRFS_XATTR_ITEM_KEY ; 
 int FUNC0 (struct send_ctx*,int) ; 
 int FUNC1 (struct send_ctx*,int) ; 
 int FUNC2 (struct send_ctx*,int) ; 
 int FUNC3 (struct send_ctx*,int) ; 
 int FUNC4 (struct send_ctx*,struct btrfs_path*,struct btrfs_key*) ; 
 int FUNC5 (struct send_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct send_ctx*,struct btrfs_path*,struct btrfs_key*) ; 

__attribute__((used)) static int FUNC7(struct btrfs_path *left_path,
		      struct btrfs_path *right_path,
		      struct btrfs_key *key,
		      enum btrfs_compare_tree_result result,
		      void *ctx)
{
	int ret = 0;
	struct send_ctx *sctx = ctx;

	if (result == BTRFS_COMPARE_TREE_SAME) {
		if (key->type == BTRFS_INODE_REF_KEY ||
		    key->type == BTRFS_INODE_EXTREF_KEY) {
			ret = FUNC4(sctx, left_path, key);
			if (!ret)
				return 0;
			if (ret < 0)
				return ret;
		} else if (key->type == BTRFS_EXTENT_DATA_KEY) {
			return FUNC6(sctx, left_path, key);
		} else {
			return 0;
		}
		result = BTRFS_COMPARE_TREE_CHANGED;
		ret = 0;
	}

	sctx->left_path = left_path;
	sctx->right_path = right_path;
	sctx->cmp_key = key;

	ret = FUNC5(sctx, 0);
	if (ret < 0)
		goto out;

	/* Ignore non-FS objects */
	if (key->objectid == BTRFS_FREE_INO_OBJECTID ||
	    key->objectid == BTRFS_FREE_SPACE_OBJECTID)
		goto out;

	if (key->type == BTRFS_INODE_ITEM_KEY) {
		ret = FUNC1(sctx, result);
	} else if (!sctx->ignore_cur_inode) {
		if (key->type == BTRFS_INODE_REF_KEY ||
		    key->type == BTRFS_INODE_EXTREF_KEY)
			ret = FUNC2(sctx, result);
		else if (key->type == BTRFS_XATTR_ITEM_KEY)
			ret = FUNC3(sctx, result);
		else if (key->type == BTRFS_EXTENT_DATA_KEY)
			ret = FUNC0(sctx, result);
	}

out:
	return ret;
}