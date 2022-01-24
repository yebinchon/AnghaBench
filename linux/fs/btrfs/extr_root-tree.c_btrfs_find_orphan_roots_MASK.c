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
typedef  scalar_t__ u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  state; int /*<<< orphan*/  root_item; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_fs_info {struct btrfs_root* tree_root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_ORPHAN_ITEM_KEY ; 
 scalar_t__ BTRFS_ORPHAN_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_ROOT_DEAD_TREE ; 
 scalar_t__ BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ROOT_ORPHAN_ITEM_INSERTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*) ; 
 struct btrfs_path* FUNC6 () ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_fs_info*,int,char*) ; 
 scalar_t__ FUNC12 (struct extent_buffer*) ; 
 int FUNC13 (struct btrfs_root*) ; 
 int FUNC14 (struct btrfs_fs_info*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,struct btrfs_key*,scalar_t__) ; 
 struct btrfs_trans_handle* FUNC16 (struct btrfs_root*) ; 
 struct btrfs_root* FUNC17 (struct btrfs_fs_info*,scalar_t__) ; 
 int FUNC18 (struct btrfs_root*,struct btrfs_path*) ; 
 struct btrfs_root* FUNC19 (struct btrfs_root*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC20 (struct btrfs_path*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC25(struct btrfs_fs_info *fs_info)
{
	struct btrfs_root *tree_root = fs_info->tree_root;
	struct extent_buffer *leaf;
	struct btrfs_path *path;
	struct btrfs_key key;
	struct btrfs_key root_key;
	struct btrfs_root *root;
	int err = 0;
	int ret;

	path = FUNC6();
	if (!path)
		return -ENOMEM;

	key.objectid = BTRFS_ORPHAN_OBJECTID;
	key.type = BTRFS_ORPHAN_ITEM_KEY;
	key.offset = 0;

	root_key.type = BTRFS_ROOT_ITEM_KEY;
	root_key.offset = (u64)-1;

	while (1) {
		ret = FUNC22(NULL, tree_root, &key, path, 0, 0);
		if (ret < 0) {
			err = ret;
			break;
		}

		leaf = path->nodes[0];
		if (path->slots[0] >= FUNC12(leaf)) {
			ret = FUNC18(tree_root, path);
			if (ret < 0)
				err = ret;
			if (ret != 0)
				break;
			leaf = path->nodes[0];
		}

		FUNC15(leaf, &key, path->slots[0]);
		FUNC20(path);

		if (key.objectid != BTRFS_ORPHAN_OBJECTID ||
		    key.type != BTRFS_ORPHAN_ITEM_KEY)
			break;

		root_key.objectid = key.offset;
		key.offset++;

		/*
		 * The root might have been inserted already, as before we look
		 * for orphan roots, log replay might have happened, which
		 * triggers a transaction commit and qgroup accounting, which
		 * in turn reads and inserts fs roots while doing backref
		 * walking.
		 */
		root = FUNC17(fs_info, root_key.objectid);
		if (root) {
			FUNC4(!FUNC24(BTRFS_ROOT_ORPHAN_ITEM_INSERTED,
					  &root->state));
			if (FUNC21(&root->root_item) == 0) {
				FUNC23(BTRFS_ROOT_DEAD_TREE, &root->state);
				FUNC5(root);
			}
			continue;
		}

		root = FUNC19(tree_root, &root_key);
		err = FUNC3(root);
		if (err && err != -ENOENT) {
			break;
		} else if (err == -ENOENT) {
			struct btrfs_trans_handle *trans;

			FUNC20(path);

			trans = FUNC16(tree_root);
			if (FUNC1(trans)) {
				err = FUNC2(trans);
				FUNC11(fs_info, err,
					    "Failed to start trans to delete orphan item");
				break;
			}
			err = FUNC7(trans, tree_root,
						    root_key.objectid);
			FUNC8(trans);
			if (err) {
				FUNC11(fs_info, err,
					    "Failed to delete root orphan item");
				break;
			}
			continue;
		}

		err = FUNC13(root);
		if (err) {
			FUNC9(root);
			break;
		}

		FUNC23(BTRFS_ROOT_ORPHAN_ITEM_INSERTED, &root->state);

		err = FUNC14(fs_info, root);
		if (err) {
			FUNC0(err == -EEXIST);
			FUNC9(root);
			break;
		}

		if (FUNC21(&root->root_item) == 0) {
			FUNC23(BTRFS_ROOT_DEAD_TREE, &root->state);
			FUNC5(root);
		}
	}

	FUNC10(path);
	return err;
}