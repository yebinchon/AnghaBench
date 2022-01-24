#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {TYPE_2__* transaction; struct btrfs_fs_info* fs_info; } ;
struct TYPE_3__ {int level; scalar_t__ root; } ;
struct btrfs_ref {int action; scalar_t__ real_root; scalar_t__ type; TYPE_1__ tree_ref; int /*<<< orphan*/  skip_qgroup; scalar_t__ parent; scalar_t__ len; scalar_t__ bytenr; } ;
struct btrfs_qgroup_extent_record {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; } ;
struct btrfs_delayed_tree_ref {scalar_t__ root; int level; int /*<<< orphan*/  node; struct btrfs_delayed_extent_op* extent_op; scalar_t__ parent; } ;
struct btrfs_delayed_ref_root {int /*<<< orphan*/  lock; } ;
struct btrfs_delayed_ref_head {scalar_t__ root; int level; int /*<<< orphan*/  node; struct btrfs_delayed_extent_op* extent_op; scalar_t__ parent; } ;
struct btrfs_delayed_extent_op {scalar_t__ is_data; } ;
struct TYPE_4__ {struct btrfs_delayed_ref_root delayed_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BTRFS_ADD_DELAYED_EXTENT ; 
 int BTRFS_ADD_DELAYED_REF ; 
 scalar_t__ BTRFS_CHUNK_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 scalar_t__ BTRFS_REF_METADATA ; 
 int /*<<< orphan*/  BTRFS_SHARED_BLOCK_REF_KEY ; 
 int /*<<< orphan*/  BTRFS_TREE_BLOCK_REF_KEY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct btrfs_delayed_tree_ref* FUNC2 (struct btrfs_trans_handle*,struct btrfs_delayed_tree_ref*,struct btrfs_qgroup_extent_record*,int,int*,int*,int*) ; 
 int /*<<< orphan*/  btrfs_delayed_ref_head_cachep ; 
 int /*<<< orphan*/  btrfs_delayed_tree_ref_cachep ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,struct btrfs_qgroup_extent_record*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_delayed_tree_ref*,struct btrfs_qgroup_extent_record*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_delayed_ref_root*,struct btrfs_delayed_tree_ref*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 struct btrfs_delayed_tree_ref* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct btrfs_delayed_tree_ref*) ; 
 struct btrfs_qgroup_extent_record* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_fs_info*,int /*<<< orphan*/ *,struct btrfs_delayed_tree_ref*,int) ; 

int FUNC16(struct btrfs_trans_handle *trans,
			       struct btrfs_ref *generic_ref,
			       struct btrfs_delayed_extent_op *extent_op,
			       int *old_ref_mod, int *new_ref_mod)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_delayed_tree_ref *ref;
	struct btrfs_delayed_ref_head *head_ref;
	struct btrfs_delayed_ref_root *delayed_refs;
	struct btrfs_qgroup_extent_record *record = NULL;
	int qrecord_inserted;
	bool is_system;
	int action = generic_ref->action;
	int level = generic_ref->tree_ref.level;
	int ret;
	u64 bytenr = generic_ref->bytenr;
	u64 num_bytes = generic_ref->len;
	u64 parent = generic_ref->parent;
	u8 ref_type;

	is_system = (generic_ref->real_root == BTRFS_CHUNK_TREE_OBJECTID);

	FUNC0(generic_ref->type == BTRFS_REF_METADATA && generic_ref->action);
	FUNC1(extent_op && extent_op->is_data);
	ref = FUNC9(btrfs_delayed_tree_ref_cachep, GFP_NOFS);
	if (!ref)
		return -ENOMEM;

	head_ref = FUNC9(btrfs_delayed_ref_head_cachep, GFP_NOFS);
	if (!head_ref) {
		FUNC10(btrfs_delayed_tree_ref_cachep, ref);
		return -ENOMEM;
	}

	if (FUNC14(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags) &&
	    FUNC8(generic_ref->real_root) &&
	    FUNC8(generic_ref->tree_ref.root) &&
	    !generic_ref->skip_qgroup) {
		record = FUNC11(sizeof(*record), GFP_NOFS);
		if (!record) {
			FUNC10(btrfs_delayed_tree_ref_cachep, ref);
			FUNC10(btrfs_delayed_ref_head_cachep, head_ref);
			return -ENOMEM;
		}
	}

	if (parent)
		ref_type = BTRFS_SHARED_BLOCK_REF_KEY;
	else
		ref_type = BTRFS_TREE_BLOCK_REF_KEY;

	FUNC5(fs_info, &ref->node, bytenr, num_bytes,
				generic_ref->tree_ref.root, action, ref_type);
	ref->root = generic_ref->tree_ref.root;
	ref->parent = parent;
	ref->level = level;

	FUNC6(head_ref, record, bytenr, num_bytes,
			      generic_ref->tree_ref.root, 0, action, false,
			      is_system);
	head_ref->extent_op = extent_op;

	delayed_refs = &trans->transaction->delayed_refs;
	FUNC12(&delayed_refs->lock);

	/*
	 * insert both the head node and the new ref without dropping
	 * the spin lock
	 */
	head_ref = FUNC2(trans, head_ref, record,
					action, &qrecord_inserted,
					old_ref_mod, new_ref_mod);

	ret = FUNC7(trans, delayed_refs, head_ref, &ref->node);
	FUNC13(&delayed_refs->lock);

	/*
	 * Need to update the delayed_refs_rsv with any changes we may have
	 * made.
	 */
	FUNC4(trans);

	FUNC15(fs_info, &ref->node, ref,
				   action == BTRFS_ADD_DELAYED_EXTENT ?
				   BTRFS_ADD_DELAYED_REF : action);
	if (ret > 0)
		FUNC10(btrfs_delayed_tree_ref_cachep, ref);

	if (qrecord_inserted)
		FUNC3(fs_info, record);

	return 0;
}