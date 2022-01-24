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
typedef  void* u64 ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; TYPE_2__* transaction; } ;
struct TYPE_3__ {void* offset; void* ino; void* ref_root; } ;
struct btrfs_ref {int action; scalar_t__ type; void* real_root; int /*<<< orphan*/  skip_qgroup; TYPE_1__ data_ref; void* parent; void* len; void* bytenr; } ;
struct btrfs_qgroup_extent_record {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; } ;
struct btrfs_delayed_ref_root {int /*<<< orphan*/  lock; } ;
struct btrfs_delayed_ref_head {int /*<<< orphan*/  node; int /*<<< orphan*/ * extent_op; void* offset; void* objectid; void* parent; void* root; } ;
struct btrfs_delayed_data_ref {int /*<<< orphan*/  node; int /*<<< orphan*/ * extent_op; void* offset; void* objectid; void* parent; void* root; } ;
struct TYPE_4__ {struct btrfs_delayed_ref_root delayed_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BTRFS_ADD_DELAYED_EXTENT ; 
 int BTRFS_ADD_DELAYED_REF ; 
 int /*<<< orphan*/  BTRFS_EXTENT_DATA_REF_KEY ; 
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 scalar_t__ BTRFS_REF_DATA ; 
 int /*<<< orphan*/  BTRFS_SHARED_DATA_REF_KEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct btrfs_delayed_ref_head* FUNC1 (struct btrfs_trans_handle*,struct btrfs_delayed_ref_head*,struct btrfs_qgroup_extent_record*,int,int*,int*,int*) ; 
 int /*<<< orphan*/  btrfs_delayed_data_ref_cachep ; 
 int /*<<< orphan*/  btrfs_delayed_ref_head_cachep ; 
 int FUNC2 (struct btrfs_fs_info*,struct btrfs_qgroup_extent_record*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ *,void*,void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_delayed_ref_head*,struct btrfs_qgroup_extent_record*,void*,void*,void*,void*,int,int,int) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_delayed_ref_root*,struct btrfs_delayed_ref_head*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (void*) ; 
 struct btrfs_delayed_ref_head* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct btrfs_delayed_ref_head*) ; 
 struct btrfs_qgroup_extent_record* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_fs_info*,int /*<<< orphan*/ *,struct btrfs_delayed_ref_head*,int) ; 

int FUNC15(struct btrfs_trans_handle *trans,
			       struct btrfs_ref *generic_ref,
			       u64 reserved, int *old_ref_mod,
			       int *new_ref_mod)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_delayed_data_ref *ref;
	struct btrfs_delayed_ref_head *head_ref;
	struct btrfs_delayed_ref_root *delayed_refs;
	struct btrfs_qgroup_extent_record *record = NULL;
	int qrecord_inserted;
	int action = generic_ref->action;
	int ret;
	u64 bytenr = generic_ref->bytenr;
	u64 num_bytes = generic_ref->len;
	u64 parent = generic_ref->parent;
	u64 ref_root = generic_ref->data_ref.ref_root;
	u64 owner = generic_ref->data_ref.ino;
	u64 offset = generic_ref->data_ref.offset;
	u8 ref_type;

	FUNC0(generic_ref->type == BTRFS_REF_DATA && action);
	ref = FUNC8(btrfs_delayed_data_ref_cachep, GFP_NOFS);
	if (!ref)
		return -ENOMEM;

	if (parent)
	        ref_type = BTRFS_SHARED_DATA_REF_KEY;
	else
	        ref_type = BTRFS_EXTENT_DATA_REF_KEY;
	FUNC4(fs_info, &ref->node, bytenr, num_bytes,
				ref_root, action, ref_type);
	ref->root = ref_root;
	ref->parent = parent;
	ref->objectid = owner;
	ref->offset = offset;


	head_ref = FUNC8(btrfs_delayed_ref_head_cachep, GFP_NOFS);
	if (!head_ref) {
		FUNC9(btrfs_delayed_data_ref_cachep, ref);
		return -ENOMEM;
	}

	if (FUNC13(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags) &&
	    FUNC7(ref_root) &&
	    FUNC7(generic_ref->real_root) &&
	    !generic_ref->skip_qgroup) {
		record = FUNC10(sizeof(*record), GFP_NOFS);
		if (!record) {
			FUNC9(btrfs_delayed_data_ref_cachep, ref);
			FUNC9(btrfs_delayed_ref_head_cachep,
					head_ref);
			return -ENOMEM;
		}
	}

	FUNC5(head_ref, record, bytenr, num_bytes, ref_root,
			      reserved, action, true, false);
	head_ref->extent_op = NULL;

	delayed_refs = &trans->transaction->delayed_refs;
	FUNC11(&delayed_refs->lock);

	/*
	 * insert both the head node and the new ref without dropping
	 * the spin lock
	 */
	head_ref = FUNC1(trans, head_ref, record,
					action, &qrecord_inserted,
					old_ref_mod, new_ref_mod);

	ret = FUNC6(trans, delayed_refs, head_ref, &ref->node);
	FUNC12(&delayed_refs->lock);

	/*
	 * Need to update the delayed_refs_rsv with any changes we may have
	 * made.
	 */
	FUNC3(trans);

	FUNC14(trans->fs_info, &ref->node, ref,
				   action == BTRFS_ADD_DELAYED_EXTENT ?
				   BTRFS_ADD_DELAYED_REF : action);
	if (ret > 0)
		FUNC9(btrfs_delayed_data_ref_cachep, ref);


	if (qrecord_inserted)
		return FUNC2(fs_info, record);
	return 0;
}