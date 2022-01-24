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
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root_item {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_trans_handle*,int) ; 
 struct btrfs_path* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int) ; 
 unsigned long FUNC6 (struct extent_buffer*,int) ; 
 int FUNC7 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_root_item*) ; 
 int FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_root_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,struct btrfs_root_item*,unsigned long,int) ; 

int FUNC14(struct btrfs_trans_handle *trans, struct btrfs_root
		      *root, struct btrfs_key *key, struct btrfs_root_item
		      *item)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_path *path;
	struct extent_buffer *l;
	int ret;
	int slot;
	unsigned long ptr;
	u32 old_len;

	path = FUNC1();
	if (!path)
		return -ENOMEM;

	ret = FUNC11(trans, root, key, path, 0, 1);
	if (ret < 0)
		goto out;

	if (ret > 0) {
		FUNC2(fs_info,
			"unable to find root key (%llu %u %llu) in tree %llu",
			key->objectid, key->type, key->offset,
			root->root_key.objectid);
		ret = -EUCLEAN;
		FUNC0(trans, ret);
		goto out;
	}

	l = path->nodes[0];
	slot = path->slots[0];
	ptr = FUNC6(l, slot);
	old_len = FUNC7(l, slot);

	/*
	 * If this is the first time we update the root item which originated
	 * from an older kernel, we need to enlarge the item size to make room
	 * for the added fields.
	 */
	if (old_len < sizeof(*item)) {
		FUNC9(path);
		ret = FUNC11(trans, root, key, path,
				-1, 1);
		if (ret < 0) {
			FUNC0(trans, ret);
			goto out;
		}

		ret = FUNC3(trans, root, path);
		if (ret < 0) {
			FUNC0(trans, ret);
			goto out;
		}
		FUNC9(path);
		ret = FUNC5(trans, root, path,
				key, sizeof(*item));
		if (ret < 0) {
			FUNC0(trans, ret);
			goto out;
		}
		l = path->nodes[0];
		slot = path->slots[0];
		ptr = FUNC6(l, slot);
	}

	/*
	 * Update generation_v2 so at the next mount we know the new root
	 * fields are valid.
	 */
	FUNC12(item, FUNC10(item));

	FUNC13(l, item, ptr, sizeof(*item));
	FUNC8(path->nodes[0]);
out:
	FUNC4(path);
	return ret;
}