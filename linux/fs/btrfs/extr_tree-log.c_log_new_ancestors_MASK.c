#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_log_ctx {int dummy; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; scalar_t__ type; } ;
struct btrfs_fs_info {scalar_t__ last_trans_committed; int /*<<< orphan*/  sb; } ;
struct TYPE_3__ {scalar_t__ const generation; } ;

/* Variables and functions */
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ BTRFS_INODE_ITEM_KEY ; 
 scalar_t__ BTRFS_INODE_REF_KEY ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int /*<<< orphan*/  LOG_INODE_EXISTS ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct extent_buffer*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,struct btrfs_key*,struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_log_ctx*) ; 
 int FUNC8 (struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct btrfs_trans_handle *trans,
			     struct btrfs_root *root,
			     struct btrfs_path *path,
			     struct btrfs_log_ctx *ctx)
{
	struct btrfs_key found_key;

	FUNC6(path->nodes[0], &found_key, path->slots[0]);

	while (true) {
		struct btrfs_fs_info *fs_info = root->fs_info;
		const u64 last_committed = fs_info->last_trans_committed;
		struct extent_buffer *leaf = path->nodes[0];
		int slot = path->slots[0];
		struct btrfs_key search_key;
		struct inode *inode;
		int ret = 0;

		FUNC9(path);

		search_key.objectid = found_key.offset;
		search_key.type = BTRFS_INODE_ITEM_KEY;
		search_key.offset = 0;
		inode = FUNC5(fs_info->sb, &search_key, root, NULL);
		if (FUNC1(inode))
			return FUNC2(inode);

		if (FUNC0(inode)->generation > last_committed)
			ret = FUNC7(trans, root, FUNC0(inode),
					      LOG_INODE_EXISTS,
					      0, LLONG_MAX, ctx);
		FUNC3(inode);
		if (ret)
			return ret;

		if (search_key.objectid == BTRFS_FIRST_FREE_OBJECTID)
			break;

		search_key.type = BTRFS_INODE_REF_KEY;
		ret = FUNC10(NULL, root, &search_key, path, 0, 0);
		if (ret < 0)
			return ret;

		leaf = path->nodes[0];
		slot = path->slots[0];
		if (slot >= FUNC4(leaf)) {
			ret = FUNC8(root, path);
			if (ret < 0)
				return ret;
			else if (ret > 0)
				return -ENOENT;
			leaf = path->nodes[0];
			slot = path->slots[0];
		}

		FUNC6(leaf, &found_key, slot);
		if (found_key.objectid != search_key.objectid ||
		    found_key.type != BTRFS_INODE_REF_KEY)
			return -ENOENT;
	}
	return 0;
}