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
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BTRFS_XATTR_ITEM_KEY ; 
 int FUNC1 (struct extent_buffer*) ; 
 scalar_t__ FUNC2 (struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int FUNC4 (struct btrfs_root*,struct btrfs_path*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_inode*,struct btrfs_path*,struct btrfs_path*,scalar_t__*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct btrfs_trans_handle *trans,
				struct btrfs_root *root,
				struct btrfs_inode *inode,
				struct btrfs_path *path,
				struct btrfs_path *dst_path)
{
	int ret;
	struct btrfs_key key;
	const u64 ino = FUNC2(inode);
	int ins_nr = 0;
	int start_slot = 0;

	key.objectid = ino;
	key.type = BTRFS_XATTR_ITEM_KEY;
	key.offset = 0;

	ret = FUNC5(NULL, root, &key, path, 0, 0);
	if (ret < 0)
		return ret;

	while (true) {
		int slot = path->slots[0];
		struct extent_buffer *leaf = path->nodes[0];
		int nritems = FUNC1(leaf);

		if (slot >= nritems) {
			if (ins_nr > 0) {
				u64 last_extent = 0;

				ret = FUNC7(trans, inode, dst_path, path,
						 &last_extent, start_slot,
						 ins_nr, 1, 0);
				/* can't be 1, extent items aren't processed */
				FUNC0(ret <= 0);
				if (ret < 0)
					return ret;
				ins_nr = 0;
			}
			ret = FUNC4(root, path);
			if (ret < 0)
				return ret;
			else if (ret > 0)
				break;
			continue;
		}

		FUNC3(leaf, &key, slot);
		if (key.objectid != ino || key.type != BTRFS_XATTR_ITEM_KEY)
			break;

		if (ins_nr == 0)
			start_slot = slot;
		ins_nr++;
		path->slots[0]++;
		FUNC6();
	}
	if (ins_nr > 0) {
		u64 last_extent = 0;

		ret = FUNC7(trans, inode, dst_path, path,
				 &last_extent, start_slot,
				 ins_nr, 1, 0);
		/* can't be 1, extent items aren't processed */
		FUNC0(ret <= 0);
		if (ret < 0)
			return ret;
	}

	return 0;
}