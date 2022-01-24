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
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {void* offset; int /*<<< orphan*/  type; void* objectid; } ;
struct btrfs_root {struct extent_buffer* node; TYPE_1__ root_key; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 void* BTRFS_TREE_LOG_OBJECTID ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct btrfs_root* FUNC0 (struct extent_buffer*) ; 
 struct btrfs_root* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*,struct btrfs_fs_info*,void*) ; 
 struct btrfs_root* FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_root*) ; 

__attribute__((used)) static struct btrfs_root *FUNC9(struct btrfs_trans_handle *trans,
					 struct btrfs_fs_info *fs_info)
{
	struct btrfs_root *root;
	struct extent_buffer *leaf;

	root = FUNC4(fs_info, GFP_NOFS);
	if (!root)
		return FUNC1(-ENOMEM);

	FUNC3(root, fs_info, BTRFS_TREE_LOG_OBJECTID);

	root->root_key.objectid = BTRFS_TREE_LOG_OBJECTID;
	root->root_key.type = BTRFS_ROOT_ITEM_KEY;
	root->root_key.offset = BTRFS_TREE_LOG_OBJECTID;

	/*
	 * DON'T set REF_COWS for log trees
	 *
	 * log trees do not get reference counted because they go away
	 * before a real commit is actually done.  They do store pointers
	 * to file data extents, and those reference counts still get
	 * updated (along with back refs to the log tree).
	 */

	leaf = FUNC5(trans, root, 0, BTRFS_TREE_LOG_OBJECTID,
			NULL, 0, 0, 0);
	if (FUNC2(leaf)) {
		FUNC8(root);
		return FUNC0(leaf);
	}

	root->node = leaf;

	FUNC6(root->node);
	FUNC7(root->node);
	return root;
}