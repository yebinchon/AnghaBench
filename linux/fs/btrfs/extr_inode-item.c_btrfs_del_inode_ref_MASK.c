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
typedef  void* u64 ;
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int leave_spinning; int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int /*<<< orphan*/  type; void* offset; void* objectid; } ;
struct btrfs_inode_ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_INODE_REF_KEY ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,char const*,int,void*,void*,void**) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 struct btrfs_inode_ref* FUNC3 (struct extent_buffer*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 void* FUNC5 (struct extent_buffer*,struct btrfs_inode_ref*) ; 
 unsigned long FUNC6 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,unsigned long,unsigned long,unsigned long) ; 

int FUNC11(struct btrfs_trans_handle *trans,
			struct btrfs_root *root,
			const char *name, int name_len,
			u64 inode_objectid, u64 ref_objectid, u64 *index)
{
	struct btrfs_path *path;
	struct btrfs_key key;
	struct btrfs_inode_ref *ref;
	struct extent_buffer *leaf;
	unsigned long ptr;
	unsigned long item_start;
	u32 item_size;
	u32 sub_item_len;
	int ret;
	int search_ext_refs = 0;
	int del_len = name_len + sizeof(*ref);

	key.objectid = inode_objectid;
	key.offset = ref_objectid;
	key.type = BTRFS_INODE_REF_KEY;

	path = FUNC0();
	if (!path)
		return -ENOMEM;

	path->leave_spinning = 1;

	ret = FUNC8(trans, root, &key, path, -1, 1);
	if (ret > 0) {
		ret = -ENOENT;
		search_ext_refs = 1;
		goto out;
	} else if (ret < 0) {
		goto out;
	}

	ref = FUNC3(path->nodes[0], path->slots[0], name,
					 name_len);
	if (!ref) {
		ret = -ENOENT;
		search_ext_refs = 1;
		goto out;
	}
	leaf = path->nodes[0];
	item_size = FUNC7(leaf, path->slots[0]);

	if (index)
		*index = FUNC5(leaf, ref);

	if (del_len == item_size) {
		ret = FUNC2(trans, root, path);
		goto out;
	}
	ptr = (unsigned long)ref;
	sub_item_len = name_len + sizeof(*ref);
	item_start = FUNC6(leaf, path->slots[0]);
	FUNC10(leaf, ptr, ptr + sub_item_len,
			      item_size - (ptr + sub_item_len - item_start));
	FUNC9(path, item_size - sub_item_len, 1);
out:
	FUNC4(path);

	if (search_ext_refs) {
		/*
		 * No refs were found, or we could not find the
		 * name in our ref array. Find and remove the extended
		 * inode ref then.
		 */
		return FUNC1(trans, root, name, name_len,
					      inode_objectid, ref_objectid, index);
	}

	return ret;
}