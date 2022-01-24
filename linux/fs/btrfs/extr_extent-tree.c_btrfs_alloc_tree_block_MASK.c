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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_1__ root_key; int /*<<< orphan*/  alloc_bytenr; struct btrfs_fs_info* fs_info; } ;
struct btrfs_ref {int /*<<< orphan*/  real_root; int /*<<< orphan*/  member_0; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {scalar_t__ nodesize; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_delayed_extent_op {int update_key; int update_flags; int is_data; int level; int /*<<< orphan*/  flags_to_set; int /*<<< orphan*/  key; } ;
typedef  struct extent_buffer btrfs_block_rsv ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ADD_DELAYED_EXTENT ; 
 int /*<<< orphan*/  BTRFS_BLOCK_FLAG_FULL_BACKREF ; 
 int /*<<< orphan*/  BTRFS_TREE_LOG_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_TREE_RELOC_OBJECTID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct extent_buffer* FUNC1 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  SKINNY_METADATA ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_ref*,struct btrfs_delayed_extent_op*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct btrfs_delayed_extent_op* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_delayed_extent_op*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_ref*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_ref*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_fs_info*,struct btrfs_ref*) ; 
 int FUNC15 (struct btrfs_root*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_fs_info*,struct extent_buffer*,scalar_t__) ; 
 struct extent_buffer* FUNC17 (struct btrfs_trans_handle*,struct btrfs_root*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct btrfs_disk_key const*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

struct extent_buffer *FUNC21(struct btrfs_trans_handle *trans,
					     struct btrfs_root *root,
					     u64 parent, u64 root_objectid,
					     const struct btrfs_disk_key *key,
					     int level, u64 hint,
					     u64 empty_size)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_key ins;
	struct btrfs_block_rsv *block_rsv;
	struct extent_buffer *buf;
	struct btrfs_delayed_extent_op *extent_op;
	struct btrfs_ref generic_ref = { 0 };
	u64 flags = 0;
	int ret;
	u32 blocksize = fs_info->nodesize;
	bool skinny_metadata = FUNC9(fs_info, SKINNY_METADATA);

#ifdef CONFIG_BTRFS_FS_RUN_SANITY_TESTS
	if (btrfs_is_testing(fs_info)) {
		buf = btrfs_init_new_buffer(trans, root, root->alloc_bytenr,
					    level, root_objectid);
		if (!IS_ERR(buf))
			root->alloc_bytenr += blocksize;
		return buf;
	}
#endif

	block_rsv = FUNC17(trans, root, blocksize);
	if (FUNC3(block_rsv))
		return FUNC1(block_rsv);

	ret = FUNC15(root, blocksize, blocksize, blocksize,
				   empty_size, hint, &ins, 0, 0);
	if (ret)
		goto out_unuse;

	buf = FUNC11(trans, root, ins.objectid, level,
				    root_objectid);
	if (FUNC3(buf)) {
		ret = FUNC4(buf);
		goto out_free_reserved;
	}

	if (root_objectid == BTRFS_TREE_RELOC_OBJECTID) {
		if (parent == 0)
			parent = ins.objectid;
		flags |= BTRFS_BLOCK_FLAG_FULL_BACKREF;
	} else
		FUNC0(parent > 0);

	if (root_objectid != BTRFS_TREE_LOG_OBJECTID) {
		extent_op = FUNC6();
		if (!extent_op) {
			ret = -ENOMEM;
			goto out_free_buf;
		}
		if (key)
			FUNC19(&extent_op->key, key, sizeof(extent_op->key));
		else
			FUNC20(&extent_op->key, 0, sizeof(extent_op->key));
		extent_op->flags_to_set = flags;
		extent_op->update_key = skinny_metadata ? false : true;
		extent_op->update_flags = true;
		extent_op->is_data = false;
		extent_op->level = level;

		FUNC10(&generic_ref, BTRFS_ADD_DELAYED_EXTENT,
				       ins.objectid, ins.offset, parent);
		generic_ref.real_root = root->root_key.objectid;
		FUNC12(&generic_ref, level, root_objectid);
		FUNC14(fs_info, &generic_ref);
		ret = FUNC5(trans, &generic_ref,
						 extent_op, NULL, NULL);
		if (ret)
			goto out_free_delayed;
	}
	return buf;

out_free_delayed:
	FUNC7(extent_op);
out_free_buf:
	FUNC18(buf);
out_free_reserved:
	FUNC8(fs_info, ins.objectid, ins.offset, 0);
out_unuse:
	FUNC16(fs_info, block_rsv, blocksize);
	return FUNC2(ret);
}