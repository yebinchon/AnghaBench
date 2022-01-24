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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  subid_le ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ offset; scalar_t__ objectid; } ;
struct btrfs_fs_info {struct btrfs_root* uuid_root; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 struct btrfs_path* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int) ; 
 unsigned long FUNC5 (struct extent_buffer*,int) ; 
 int FUNC6 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct btrfs_key*) ; 
 int FUNC9 (struct btrfs_root*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,char*,int,unsigned long long,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,int /*<<< orphan*/ *,unsigned long,int) ; 

int FUNC13(struct btrfs_trans_handle *trans, u8 *uuid, u8 type,
			u64 subid_cpu)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_root *uuid_root = fs_info->uuid_root;
	int ret;
	struct btrfs_path *path = NULL;
	struct btrfs_key key;
	struct extent_buffer *eb;
	int slot;
	unsigned long offset;
	__le64 subid_le;

	ret = FUNC9(uuid_root, uuid, type, subid_cpu);
	if (ret != -ENOENT)
		return ret;

	if (FUNC0(!uuid_root)) {
		ret = -EINVAL;
		goto out;
	}

	FUNC8(uuid, type, &key);

	path = FUNC1();
	if (!path) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC4(trans, uuid_root, path, &key,
				      sizeof(subid_le));
	if (ret >= 0) {
		/* Add an item for the type for the first time */
		eb = path->nodes[0];
		slot = path->slots[0];
		offset = FUNC5(eb, slot);
	} else if (ret == -EEXIST) {
		/*
		 * An item with that type already exists.
		 * Extend the item and store the new subid at the end.
		 */
		FUNC2(path, sizeof(subid_le));
		eb = path->nodes[0];
		slot = path->slots[0];
		offset = FUNC5(eb, slot);
		offset += FUNC6(eb, slot) - sizeof(subid_le);
	} else {
		FUNC10(fs_info,
			   "insert uuid item failed %d (0x%016llx, 0x%016llx) type %u!",
			   ret, (unsigned long long)key.objectid,
			   (unsigned long long)key.offset, type);
		goto out;
	}

	ret = 0;
	subid_le = FUNC11(subid_cpu);
	FUNC12(eb, &subid_le, offset, sizeof(subid_le));
	FUNC7(eb);

out:
	FUNC3(path);
	return ret;
}