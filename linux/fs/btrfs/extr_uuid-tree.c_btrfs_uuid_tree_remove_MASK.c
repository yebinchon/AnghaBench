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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  subid ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {struct btrfs_root* uuid_root; } ;
typedef  int /*<<< orphan*/  read_subid ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct btrfs_path* FUNC2 () ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 unsigned long FUNC5 (struct extent_buffer*,int) ; 
 int FUNC6 (struct extent_buffer*,int) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,char*,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,int /*<<< orphan*/ *,unsigned long,int) ; 

int FUNC14(struct btrfs_trans_handle *trans, u8 *uuid, u8 type,
			u64 subid)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_root *uuid_root = fs_info->uuid_root;
	int ret;
	struct btrfs_path *path = NULL;
	struct btrfs_key key;
	struct extent_buffer *eb;
	int slot;
	unsigned long offset;
	u32 item_size;
	unsigned long move_dst;
	unsigned long move_src;
	unsigned long move_len;

	if (FUNC1(!uuid_root)) {
		ret = -EINVAL;
		goto out;
	}

	FUNC9(uuid, type, &key);

	path = FUNC2();
	if (!path) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC7(trans, uuid_root, &key, path, -1, 1);
	if (ret < 0) {
		FUNC10(fs_info, "error %d while searching for uuid item!",
			   ret);
		goto out;
	}
	if (ret > 0) {
		ret = -ENOENT;
		goto out;
	}

	eb = path->nodes[0];
	slot = path->slots[0];
	offset = FUNC5(eb, slot);
	item_size = FUNC6(eb, slot);
	if (!FUNC0(item_size, sizeof(u64))) {
		FUNC10(fs_info, "uuid item with illegal size %lu!",
			   (unsigned long)item_size);
		ret = -ENOENT;
		goto out;
	}
	while (item_size) {
		__le64 read_subid;

		FUNC13(eb, &read_subid, offset, sizeof(read_subid));
		if (FUNC11(read_subid) == subid)
			break;
		offset += sizeof(read_subid);
		item_size -= sizeof(read_subid);
	}

	if (!item_size) {
		ret = -ENOENT;
		goto out;
	}

	item_size = FUNC6(eb, slot);
	if (item_size == sizeof(subid)) {
		ret = FUNC3(trans, uuid_root, path);
		goto out;
	}

	move_dst = offset;
	move_src = offset + sizeof(subid);
	move_len = item_size - (move_src - FUNC5(eb, slot));
	FUNC12(eb, move_dst, move_src, move_len);
	FUNC8(path, item_size - sizeof(subid), 1);

out:
	FUNC4(path);
	return ret;
}