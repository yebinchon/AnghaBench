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
typedef  scalar_t__ u64 ;
struct ulist {scalar_t__ nnodes; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; struct btrfs_fs_info* fs_info; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_fs_info {int qgroup_flags; scalar_t__ qgroup_seq; int /*<<< orphan*/  qgroup_lock; int /*<<< orphan*/  qgroup_rescan_lock; TYPE_1__ qgroup_rescan_progress; int /*<<< orphan*/  quota_root; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int BTRFS_QGROUP_STATUS_FLAG_RESCAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UPDATE_NEW ; 
 int /*<<< orphan*/  UPDATE_OLD ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ulist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,struct ulist*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct btrfs_fs_info*,struct ulist*,struct ulist*,struct ulist*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 struct ulist* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ulist*) ; 

int FUNC13(struct btrfs_trans_handle *trans, u64 bytenr,
				u64 num_bytes, struct ulist *old_roots,
				struct ulist *new_roots)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct ulist *qgroups = NULL;
	struct ulist *tmp = NULL;
	u64 seq;
	u64 nr_new_roots = 0;
	u64 nr_old_roots = 0;
	int ret = 0;

	if (!FUNC9(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags))
		return 0;

	if (new_roots) {
		if (!FUNC2(new_roots))
			goto out_free;
		nr_new_roots = new_roots->nnodes;
	}
	if (old_roots) {
		if (!FUNC2(old_roots))
			goto out_free;
		nr_old_roots = old_roots->nnodes;
	}

	/* Quick exit, either not fs tree roots, or won't affect any qgroup */
	if (nr_old_roots == 0 && nr_new_roots == 0)
		goto out_free;

	FUNC0(!fs_info->quota_root);

	FUNC10(fs_info, trans->transid, bytenr,
					num_bytes, nr_old_roots, nr_new_roots);

	qgroups = FUNC11(GFP_NOFS);
	if (!qgroups) {
		ret = -ENOMEM;
		goto out_free;
	}
	tmp = FUNC11(GFP_NOFS);
	if (!tmp) {
		ret = -ENOMEM;
		goto out_free;
	}

	FUNC3(&fs_info->qgroup_rescan_lock);
	if (fs_info->qgroup_flags & BTRFS_QGROUP_STATUS_FLAG_RESCAN) {
		if (fs_info->qgroup_rescan_progress.objectid <= bytenr) {
			FUNC4(&fs_info->qgroup_rescan_lock);
			ret = 0;
			goto out_free;
		}
	}
	FUNC4(&fs_info->qgroup_rescan_lock);

	FUNC7(&fs_info->qgroup_lock);
	seq = fs_info->qgroup_seq;

	/* Update old refcnts using old_roots */
	ret = FUNC6(fs_info, old_roots, tmp, qgroups, seq,
				   UPDATE_OLD);
	if (ret < 0)
		goto out;

	/* Update new refcnts using new_roots */
	ret = FUNC6(fs_info, new_roots, tmp, qgroups, seq,
				   UPDATE_NEW);
	if (ret < 0)
		goto out;

	FUNC5(fs_info, qgroups, nr_old_roots, nr_new_roots,
			       num_bytes, seq);

	/*
	 * Bump qgroup_seq to avoid seq overlap
	 */
	fs_info->qgroup_seq += FUNC1(nr_old_roots, nr_new_roots) + 1;
out:
	FUNC8(&fs_info->qgroup_lock);
out_free:
	FUNC12(tmp);
	FUNC12(qgroups);
	FUNC12(old_roots);
	FUNC12(new_roots);
	return ret;
}