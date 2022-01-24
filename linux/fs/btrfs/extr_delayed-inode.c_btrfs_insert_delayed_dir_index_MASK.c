#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_trans_handle {int /*<<< orphan*/  fs_info; int /*<<< orphan*/  transid; } ;
struct btrfs_inode {int /*<<< orphan*/  root; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_dir_item {struct btrfs_disk_key location; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  mutex; int /*<<< orphan*/  inode_id; TYPE_3__* root; } ;
struct TYPE_4__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_delayed_item {scalar_t__ data; TYPE_1__ key; } ;
struct TYPE_5__ {int /*<<< orphan*/  objectid; } ;
struct TYPE_6__ {TYPE_2__ root_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DIR_INDEX_KEY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (struct btrfs_delayed_node*) ; 
 int FUNC3 (struct btrfs_delayed_node*) ; 
 int FUNC4 (struct btrfs_delayed_node*,struct btrfs_delayed_item*) ; 
 struct btrfs_delayed_item* FUNC5 (int) ; 
 int FUNC6 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,struct btrfs_delayed_item*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct btrfs_delayed_node* FUNC8 (struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_dir_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_dir_item*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_dir_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_dir_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct btrfs_trans_handle *trans,
				   const char *name, int name_len,
				   struct btrfs_inode *dir,
				   struct btrfs_disk_key *disk_key, u8 type,
				   u64 index)
{
	struct btrfs_delayed_node *delayed_node;
	struct btrfs_delayed_item *delayed_item;
	struct btrfs_dir_item *dir_item;
	int ret;

	delayed_node = FUNC8(dir);
	if (FUNC2(delayed_node))
		return FUNC3(delayed_node);

	delayed_item = FUNC5(sizeof(*dir_item) + name_len);
	if (!delayed_item) {
		ret = -ENOMEM;
		goto release_node;
	}

	delayed_item->key.objectid = FUNC9(dir);
	delayed_item->key.type = BTRFS_DIR_INDEX_KEY;
	delayed_item->key.offset = index;

	dir_item = (struct btrfs_dir_item *)delayed_item->data;
	dir_item->location = *disk_key;
	FUNC13(dir_item, trans->transid);
	FUNC11(dir_item, 0);
	FUNC12(dir_item, name_len);
	FUNC14(dir_item, type);
	FUNC15((char *)(dir_item + 1), name, name_len);

	ret = FUNC6(trans, dir->root, delayed_item);
	/*
	 * we have reserved enough space when we start a new transaction,
	 * so reserving metadata failure is impossible
	 */
	FUNC1(ret);

	FUNC16(&delayed_node->mutex);
	ret = FUNC4(delayed_node, delayed_item);
	if (FUNC18(ret)) {
		FUNC7(trans->fs_info,
			  "err add delayed dir index item(name: %.*s) into the insertion tree of the delayed node(root id: %llu, inode id: %llu, errno: %d)",
			  name_len, name, delayed_node->root->root_key.objectid,
			  delayed_node->inode_id, ret);
		FUNC0();
	}
	FUNC17(&delayed_node->mutex);

release_node:
	FUNC10(delayed_node);
	return ret;
}