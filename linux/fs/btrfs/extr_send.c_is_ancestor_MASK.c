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
struct fs_path {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_inode_extref {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_INODE_EXTREF_KEY ; 
 scalar_t__ BTRFS_INODE_REF_KEY ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*) ; 
 int FUNC2 (struct extent_buffer*) ; 
 scalar_t__ FUNC3 (struct extent_buffer*,struct btrfs_inode_extref*) ; 
 scalar_t__ FUNC4 (struct extent_buffer*,struct btrfs_inode_extref*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct btrfs_key*,int) ; 
 unsigned long FUNC6 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC7 (struct extent_buffer*,int) ; 
 int FUNC8 (struct btrfs_root*,struct btrfs_path*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct btrfs_root*,scalar_t__ const,scalar_t__ const,scalar_t__,scalar_t__,struct fs_path*) ; 
 struct fs_path* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct fs_path*) ; 
 int FUNC13 (struct btrfs_root*,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct btrfs_root *root,
		       const u64 ino1,
		       const u64 ino1_gen,
		       const u64 ino2,
		       struct fs_path *fs_path)
{
	bool free_fs_path = false;
	int ret = 0;
	struct btrfs_path *path = NULL;
	struct btrfs_key key;

	if (!fs_path) {
		fs_path = FUNC11();
		if (!fs_path)
			return -ENOMEM;
		free_fs_path = true;
	}

	path = FUNC0();
	if (!path) {
		ret = -ENOMEM;
		goto out;
	}

	key.objectid = ino2;
	key.type = BTRFS_INODE_REF_KEY;
	key.offset = 0;

	ret = FUNC9(NULL, root, &key, path, 0, 0);
	if (ret < 0)
		goto out;

	while (true) {
		struct extent_buffer *leaf = path->nodes[0];
		int slot = path->slots[0];
		u32 cur_offset = 0;
		u32 item_size;

		if (slot >= FUNC2(leaf)) {
			ret = FUNC8(root, path);
			if (ret < 0)
				goto out;
			if (ret > 0)
				break;
			continue;
		}

		FUNC5(leaf, &key, slot);
		if (key.objectid != ino2)
			break;
		if (key.type != BTRFS_INODE_REF_KEY &&
		    key.type != BTRFS_INODE_EXTREF_KEY)
			break;

		item_size = FUNC7(leaf, slot);
		while (cur_offset < item_size) {
			u64 parent;
			u64 parent_gen;

			if (key.type == BTRFS_INODE_EXTREF_KEY) {
				unsigned long ptr;
				struct btrfs_inode_extref *extref;

				ptr = FUNC6(leaf, slot);
				extref = (struct btrfs_inode_extref *)
					(ptr + cur_offset);
				parent = FUNC4(leaf,
								   extref);
				cur_offset += sizeof(*extref);
				cur_offset += FUNC3(leaf,
								  extref);
			} else {
				parent = key.offset;
				cur_offset = item_size;
			}

			ret = FUNC13(root, parent, NULL, &parent_gen,
					     NULL, NULL, NULL, NULL);
			if (ret < 0)
				goto out;
			ret = FUNC10(root, ino1, ino1_gen,
						parent, parent_gen, fs_path);
			if (ret)
				goto out;
		}
		path->slots[0]++;
	}
	ret = 0;
 out:
	FUNC1(path);
	if (free_fs_path)
		FUNC12(fs_path);
	return ret;
}