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
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_inode_extref {int dummy; } ;
struct btrfs_inode {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct btrfs_root*,scalar_t__,scalar_t__,struct btrfs_path*,struct btrfs_inode_extref**,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct btrfs_inode*) ; 
 int FUNC2 (struct extent_buffer*,struct btrfs_inode_extref*) ; 
 unsigned long FUNC3 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 

__attribute__((used)) static int FUNC6(struct btrfs_root *root,
		struct btrfs_inode *inode, struct btrfs_path *path)
{
	int ret = 0;
	int name_len;
	unsigned int nlink = 0;
	u32 item_size;
	u32 cur_offset = 0;
	u64 inode_objectid = FUNC1(inode);
	u64 offset = 0;
	unsigned long ptr;
	struct btrfs_inode_extref *extref;
	struct extent_buffer *leaf;

	while (1) {
		ret = FUNC0(root, inode_objectid, offset, path,
					    &extref, &offset);
		if (ret)
			break;

		leaf = path->nodes[0];
		item_size = FUNC4(leaf, path->slots[0]);
		ptr = FUNC3(leaf, path->slots[0]);
		cur_offset = 0;

		while (cur_offset < item_size) {
			extref = (struct btrfs_inode_extref *) (ptr + cur_offset);
			name_len = FUNC2(leaf, extref);

			nlink++;

			cur_offset += name_len + sizeof(*extref);
		}

		offset++;
		FUNC5(path);
	}
	FUNC5(path);

	if (ret < 0 && ret != -ENOENT)
		return ret;
	return nlink;
}