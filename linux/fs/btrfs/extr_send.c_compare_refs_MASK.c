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
struct send_ctx {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_inode_extref {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_INODE_REF_KEY ; 
 int FUNC0 (struct extent_buffer*,struct btrfs_inode_extref*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*,struct btrfs_inode_extref*) ; 
 unsigned long FUNC2 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct send_ctx*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct send_ctx *sctx, struct btrfs_path *path,
			struct btrfs_key *key)
{
	struct btrfs_inode_extref *extref;
	struct extent_buffer *leaf;
	u64 dirid = 0, last_dirid = 0;
	unsigned long ptr;
	u32 item_size;
	u32 cur_offset = 0;
	int ref_name_len;
	int ret = 0;

	/* Easy case, just check this one dirid */
	if (key->type == BTRFS_INODE_REF_KEY) {
		dirid = key->offset;

		ret = FUNC4(sctx, dirid);
		goto out;
	}

	leaf = path->nodes[0];
	item_size = FUNC3(leaf, path->slots[0]);
	ptr = FUNC2(leaf, path->slots[0]);
	while (cur_offset < item_size) {
		extref = (struct btrfs_inode_extref *)(ptr +
						       cur_offset);
		dirid = FUNC1(leaf, extref);
		ref_name_len = FUNC0(leaf, extref);
		cur_offset += ref_name_len + sizeof(*extref);
		if (dirid == last_dirid)
			continue;
		ret = FUNC4(sctx, dirid);
		if (ret)
			break;
		last_dirid = dirid;
	}
out:
	return ret;
}