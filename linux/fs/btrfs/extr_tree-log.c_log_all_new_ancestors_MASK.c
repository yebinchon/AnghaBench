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
typedef  scalar_t__ u64 ;
struct extent_buffer {int dummy; } ;
struct dentry {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_log_ctx {int dummy; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct TYPE_2__ {int i_nlink; } ;
struct btrfs_inode {TYPE_1__ vfs_inode; struct btrfs_root* root; } ;
typedef  int /*<<< orphan*/  search_key ;

/* Variables and functions */
 scalar_t__ BTRFS_INODE_EXTREF_KEY ; 
 scalar_t__ BTRFS_INODE_REF_KEY ; 
 int EMLINK ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*) ; 
 int FUNC2 (struct extent_buffer*) ; 
 scalar_t__ FUNC3 (struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int FUNC5 (struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_log_ctx*) ; 
 int FUNC9 (struct btrfs_trans_handle*,struct btrfs_inode*,struct dentry*,struct btrfs_log_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_key*,struct btrfs_key*,int) ; 

__attribute__((used)) static int FUNC11(struct btrfs_trans_handle *trans,
				 struct btrfs_inode *inode,
				 struct dentry *parent,
				 struct btrfs_log_ctx *ctx)
{
	struct btrfs_root *root = inode->root;
	const u64 ino = FUNC3(inode);
	struct btrfs_path *path;
	struct btrfs_key search_key;
	int ret;

	/*
	 * For a single hard link case, go through a fast path that does not
	 * need to iterate the fs/subvolume tree.
	 */
	if (inode->vfs_inode.i_nlink < 2)
		return FUNC9(trans, inode, parent, ctx);

	path = FUNC0();
	if (!path)
		return -ENOMEM;

	search_key.objectid = ino;
	search_key.type = BTRFS_INODE_REF_KEY;
	search_key.offset = 0;
again:
	ret = FUNC7(NULL, root, &search_key, path, 0, 0);
	if (ret < 0)
		goto out;
	if (ret == 0)
		path->slots[0]++;

	while (true) {
		struct extent_buffer *leaf = path->nodes[0];
		int slot = path->slots[0];
		struct btrfs_key found_key;

		if (slot >= FUNC2(leaf)) {
			ret = FUNC5(root, path);
			if (ret < 0)
				goto out;
			else if (ret > 0)
				break;
			continue;
		}

		FUNC4(leaf, &found_key, slot);
		if (found_key.objectid != ino ||
		    found_key.type > BTRFS_INODE_EXTREF_KEY)
			break;

		/*
		 * Don't deal with extended references because they are rare
		 * cases and too complex to deal with (we would need to keep
		 * track of which subitem we are processing for each item in
		 * this loop, etc). So just return some error to fallback to
		 * a transaction commit.
		 */
		if (found_key.type == BTRFS_INODE_EXTREF_KEY) {
			ret = -EMLINK;
			goto out;
		}

		/*
		 * Logging ancestors needs to do more searches on the fs/subvol
		 * tree, so it releases the path as needed to avoid deadlocks.
		 * Keep track of the last inode ref key and resume from that key
		 * after logging all new ancestors for the current hard link.
		 */
		FUNC10(&search_key, &found_key, sizeof(search_key));

		ret = FUNC8(trans, root, path, ctx);
		if (ret)
			goto out;
		FUNC6(path);
		goto again;
	}
	ret = 0;
out:
	FUNC1(path);
	return ret;
}