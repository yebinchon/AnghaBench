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
typedef  int /*<<< orphan*/  u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_item {int dummy; } ;
struct btrfs_dir_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DIR_ITEM_KEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int EOVERFLOW ; 
 struct btrfs_path* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 scalar_t__ FUNC3 (struct extent_buffer*,int) ; 
 struct btrfs_dir_item* FUNC4 (int /*<<< orphan*/ ,struct btrfs_path*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct btrfs_root *root, u64 dir,
				   const char *name, int name_len)
{
	int ret;
	struct btrfs_key key;
	struct btrfs_dir_item *di;
	int data_size;
	struct extent_buffer *leaf;
	int slot;
	struct btrfs_path *path;


	path = FUNC1();
	if (!path)
		return -ENOMEM;

	key.objectid = dir;
	key.type = BTRFS_DIR_ITEM_KEY;
	key.offset = FUNC5(name, name_len);

	ret = FUNC6(NULL, root, &key, path, 0, 0);

	/* return back any errors */
	if (ret < 0)
		goto out;

	/* nothing found, we're safe */
	if (ret > 0) {
		ret = 0;
		goto out;
	}

	/* we found an item, look for our name in the item */
	di = FUNC4(root->fs_info, path, name, name_len);
	if (di) {
		/* our exact name was found */
		ret = -EEXIST;
		goto out;
	}

	/*
	 * see if there is room in the item to insert this
	 * name
	 */
	data_size = sizeof(*di) + name_len;
	leaf = path->nodes[0];
	slot = path->slots[0];
	if (data_size + FUNC3(leaf, slot) +
	    sizeof(struct btrfs_item) > FUNC0(root->fs_info)) {
		ret = -EOVERFLOW;
	} else {
		/* plenty of insertion room */
		ret = 0;
	}
out:
	FUNC2(path);
	return ret;
}