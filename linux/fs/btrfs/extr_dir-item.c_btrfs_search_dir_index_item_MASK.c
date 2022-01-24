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
typedef  scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_dir_item {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_DIR_INDEX_KEY ; 
 struct btrfs_dir_item* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_key*,scalar_t__) ; 
 struct btrfs_dir_item* FUNC3 (int /*<<< orphan*/ ,struct btrfs_path*,char const*,int) ; 
 int FUNC4 (struct btrfs_root*,struct btrfs_path*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct btrfs_dir_item *
FUNC6(struct btrfs_root *root,
			    struct btrfs_path *path, u64 dirid,
			    const char *name, int name_len)
{
	struct extent_buffer *leaf;
	struct btrfs_dir_item *di;
	struct btrfs_key key;
	u32 nritems;
	int ret;

	key.objectid = dirid;
	key.type = BTRFS_DIR_INDEX_KEY;
	key.offset = 0;

	ret = FUNC5(NULL, root, &key, path, 0, 0);
	if (ret < 0)
		return FUNC0(ret);

	leaf = path->nodes[0];
	nritems = FUNC1(leaf);

	while (1) {
		if (path->slots[0] >= nritems) {
			ret = FUNC4(root, path);
			if (ret < 0)
				return FUNC0(ret);
			if (ret > 0)
				break;
			leaf = path->nodes[0];
			nritems = FUNC1(leaf);
			continue;
		}

		FUNC2(leaf, &key, path->slots[0]);
		if (key.objectid != dirid || key.type != BTRFS_DIR_INDEX_KEY)
			break;

		di = FUNC3(root->fs_info, path,
					       name, name_len);
		if (di)
			return di;

		path->slots[0]++;
	}
	return NULL;
}