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
struct btrfs_trans_handle {TYPE_1__* transaction; struct btrfs_fs_info* fs_info; } ;
struct btrfs_qgroup_extent_record {int /*<<< orphan*/ * old_roots; scalar_t__ num_bytes; scalar_t__ bytenr; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; } ;
struct btrfs_delayed_ref_root {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct btrfs_delayed_ref_root delayed_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int ENOMEM ; 
 int FUNC0 (struct btrfs_fs_info*,struct btrfs_delayed_ref_root*,struct btrfs_qgroup_extent_record*) ; 
 int FUNC1 (struct btrfs_fs_info*,struct btrfs_qgroup_extent_record*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_qgroup_extent_record*) ; 
 struct btrfs_qgroup_extent_record* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct btrfs_trans_handle *trans, u64 bytenr,
			      u64 num_bytes, gfp_t gfp_flag)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_qgroup_extent_record *record;
	struct btrfs_delayed_ref_root *delayed_refs;
	int ret;

	if (!FUNC6(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags)
	    || bytenr == 0 || num_bytes == 0)
		return 0;
	record = FUNC3(sizeof(*record), gfp_flag);
	if (!record)
		return -ENOMEM;

	delayed_refs = &trans->transaction->delayed_refs;
	record->bytenr = bytenr;
	record->num_bytes = num_bytes;
	record->old_roots = NULL;

	FUNC4(&delayed_refs->lock);
	ret = FUNC0(fs_info, delayed_refs, record);
	FUNC5(&delayed_refs->lock);
	if (ret > 0) {
		FUNC2(record);
		return 0;
	}
	return FUNC1(fs_info, record);
}