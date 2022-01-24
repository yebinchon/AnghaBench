#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  b; } ;
typedef  TYPE_2__ uuid_le ;
typedef  void* u64 ;
struct extent_buffer {int /*<<< orphan*/  len; int /*<<< orphan*/  start; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; struct btrfs_fs_info* fs_info; } ;
struct TYPE_15__ {scalar_t__ drop_level; int /*<<< orphan*/  uuid; scalar_t__ byte_limit; scalar_t__ flags; } ;
struct TYPE_13__ {scalar_t__ offset; void* type; void* objectid; } ;
struct btrfs_root {struct extent_buffer* commit_root; TYPE_4__ root_item; int /*<<< orphan*/  state; struct extent_buffer* node; TYPE_1__ root_key; } ;
struct btrfs_key {scalar_t__ offset; void* type; void* objectid; } ;
struct btrfs_fs_info {struct btrfs_root* tree_root; } ;

/* Variables and functions */
 void* BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ROOT_TRACK_DIRTY ; 
 int /*<<< orphan*/  BTRFS_UUID_SIZE ; 
 int ENOMEM ; 
 struct btrfs_root* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 TYPE_2__ NULL_UUID_LE ; 
 int FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*,struct btrfs_fs_info*,void*) ; 
 struct btrfs_root* FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC8 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*) ; 
 scalar_t__ FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int) ; 
 unsigned int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 

struct btrfs_root *FUNC25(struct btrfs_trans_handle *trans,
				     u64 objectid)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct extent_buffer *leaf;
	struct btrfs_root *tree_root = fs_info->tree_root;
	struct btrfs_root *root;
	struct btrfs_key key;
	unsigned int nofs_flag;
	int ret = 0;
	uuid_le uuid = NULL_UUID_LE;

	/*
	 * We're holding a transaction handle, so use a NOFS memory allocation
	 * context to avoid deadlock if reclaim happens.
	 */
	nofs_flag = FUNC21();
	root = FUNC4(fs_info, GFP_KERNEL);
	FUNC20(nofs_flag);
	if (!root)
		return FUNC0(-ENOMEM);

	FUNC3(root, fs_info, objectid);
	root->root_key.objectid = objectid;
	root->root_key.type = BTRFS_ROOT_ITEM_KEY;
	root->root_key.offset = 0;

	leaf = FUNC5(trans, root, 0, objectid, NULL, 0, 0, 0);
	if (FUNC1(leaf)) {
		ret = FUNC2(leaf);
		leaf = NULL;
		goto fail;
	}

	root->node = leaf;
	FUNC7(leaf);

	root->commit_root = FUNC8(root);
	FUNC23(BTRFS_ROOT_TRACK_DIRTY, &root->state);

	root->root_item.flags = 0;
	root->root_item.byte_limit = 0;
	FUNC9(&root->root_item, leaf->start);
	FUNC11(&root->root_item, trans->transid);
	FUNC13(&root->root_item, 0);
	FUNC14(&root->root_item, 1);
	FUNC15(&root->root_item, leaf->len);
	FUNC12(&root->root_item, 0);
	FUNC10(&root->root_item, 0);
	if (FUNC18(objectid))
		FUNC24(&uuid);
	FUNC22(root->root_item.uuid, uuid.b, BTRFS_UUID_SIZE);
	root->root_item.drop_level = 0;

	key.objectid = objectid;
	key.type = BTRFS_ROOT_ITEM_KEY;
	key.offset = 0;
	ret = FUNC6(trans, tree_root, &key, &root->root_item);
	if (ret)
		goto fail;

	FUNC16(leaf);

	return root;

fail:
	if (leaf) {
		FUNC16(leaf);
		FUNC17(root->commit_root);
		FUNC17(leaf);
	}
	FUNC19(root);

	return FUNC0(ret);
}