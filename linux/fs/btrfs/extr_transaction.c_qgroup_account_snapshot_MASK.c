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
struct btrfs_trans_handle {int /*<<< orphan*/  transaction; } ;
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_qgroup_inherit {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_log_mutex; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,int,char*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_qgroup_inherit*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 int FUNC4 (struct btrfs_trans_handle*) ; 
 int FUNC5 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct btrfs_trans_handle *trans,
				   struct btrfs_root *src,
				   struct btrfs_root *parent,
				   struct btrfs_qgroup_inherit *inherit,
				   u64 dst_objectid)
{
	struct btrfs_fs_info *fs_info = src->fs_info;
	int ret;

	/*
	 * Save some performance in the case that qgroups are not
	 * enabled. If this check races with the ioctl, rescan will
	 * kick in anyway.
	 */
	if (!FUNC10(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags))
		return 0;

	/*
	 * Ensure dirty @src will be committed.  Or, after coming
	 * commit_fs_roots() and switch_commit_roots(), any dirty but not
	 * recorded root will never be updated again, causing an outdated root
	 * item.
	 */
	FUNC8(trans, src, 1);

	/*
	 * We are going to commit transaction, see btrfs_commit_transaction()
	 * comment for reason locking tree_log_mutex
	 */
	FUNC6(&fs_info->tree_log_mutex);

	ret = FUNC5(trans);
	if (ret)
		goto out;
	ret = FUNC1(trans);
	if (ret < 0)
		goto out;

	/* Now qgroup are all updated, we can inherit it to new qgroups */
	ret = FUNC2(trans, src->root_key.objectid, dst_objectid,
				   inherit);
	if (ret < 0)
		goto out;

	/*
	 * Now we do a simplified commit transaction, which will:
	 * 1) commit all subvolume and extent tree
	 *    To ensure all subvolume and extent tree have a valid
	 *    commit_root to accounting later insert_dir_item()
	 * 2) write all btree blocks onto disk
	 *    This is to make sure later btree modification will be cowed
	 *    Or commit_root can be populated and cause wrong qgroup numbers
	 * In this simplified commit, we don't really care about other trees
	 * like chunk and root tree, as they won't affect qgroup.
	 * And we don't write super to avoid half committed status.
	 */
	ret = FUNC4(trans);
	if (ret)
		goto out;
	FUNC9(trans->transaction);
	ret = FUNC3(trans);
	if (ret)
		FUNC0(fs_info, ret,
			"Error while writing out transaction for qgroup");

out:
	FUNC7(&fs_info->tree_log_mutex);

	/*
	 * Force parent root to be updated, as we recorded it before so its
	 * last_trans == cur_transid.
	 * Or it won't be committed again onto disk after later
	 * insert_dir_item()
	 */
	if (!ret)
		FUNC8(trans, parent, 1);
	return ret;
}