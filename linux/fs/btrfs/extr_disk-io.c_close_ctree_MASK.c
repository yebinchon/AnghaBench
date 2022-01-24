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
struct TYPE_3__ {int /*<<< orphan*/  bio_counter; } ;
struct btrfs_fs_info {int /*<<< orphan*/  subvol_srcu; TYPE_1__ dev_replace; int /*<<< orphan*/  dio_bytes; int /*<<< orphan*/  delalloc_bytes; int /*<<< orphan*/  dirty_metadata_bytes; int /*<<< orphan*/  fs_devices; int /*<<< orphan*/  mapping_tree; TYPE_2__* btree_inode; int /*<<< orphan*/  flags; int /*<<< orphan*/  delalloc_roots; int /*<<< orphan*/  delayed_iputs; int /*<<< orphan*/  cleaner_kthread; int /*<<< orphan*/  transaction_kthread; int /*<<< orphan*/  fs_state; int /*<<< orphan*/  sb; int /*<<< orphan*/  async_reclaim_work; int /*<<< orphan*/  defrag_running; int /*<<< orphan*/  transaction_wait; int /*<<< orphan*/  uuid_tree_rescan_sem; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTRFS_FS_CLOSING_DONE ; 
 int /*<<< orphan*/  BTRFS_FS_CLOSING_START ; 
 int /*<<< orphan*/  BTRFS_FS_OPEN ; 
 int /*<<< orphan*/  BTRFS_FS_STATE_ERROR ; 
 int /*<<< orphan*/  BTRFS_FS_STATE_TRANS_ABORTED ; 
 int /*<<< orphan*/  CHECK_INTEGRITY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_fs_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_fs_info*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC21 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct btrfs_fs_info*) ; 
 scalar_t__ FUNC24 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int) ; 

void FUNC43(struct btrfs_fs_info *fs_info)
{
	int ret;

	FUNC39(BTRFS_FS_CLOSING_START, &fs_info->flags);
	/*
	 * We don't want the cleaner to start new transactions, add more delayed
	 * iputs, etc. while we're closing. We can't use kthread_stop() yet
	 * because that frees the task_struct, and the transaction kthread might
	 * still try to wake up the cleaner.
	 */
	FUNC33(fs_info->cleaner_kthread);

	/* wait for the qgroup rescan worker to stop */
	FUNC19(fs_info, false);

	/* wait for the uuid_scan task to finish */
	FUNC29(&fs_info->uuid_tree_rescan_sem);
	/* avoid complains from lockdep et al., set sem back to initial state */
	FUNC41(&fs_info->uuid_tree_rescan_sem);

	/* pause restriper - we want to resume on mount */
	FUNC17(fs_info);

	FUNC6(fs_info);

	FUNC20(fs_info);

	/* wait for any defraggers to finish */
	FUNC42(fs_info->transaction_wait,
		   (FUNC1(&fs_info->defrag_running) == 0));

	/* clear out the rbtree of defraggable inodes */
	FUNC2(fs_info);

	FUNC26(&fs_info->async_reclaim_work);

	if (!FUNC38(fs_info->sb)) {
		/*
		 * The cleaner kthread is stopped, so do one final pass over
		 * unused block groups.
		 */
		FUNC5(fs_info);

		ret = FUNC4(fs_info);
		if (ret)
			FUNC7(fs_info, "commit super ret %d", ret);
	}

	if (FUNC40(BTRFS_FS_STATE_ERROR, &fs_info->fs_state) ||
	    FUNC40(BTRFS_FS_STATE_TRANS_ABORTED, &fs_info->fs_state))
		FUNC8(fs_info);

	FUNC34(fs_info->transaction_kthread);
	FUNC34(fs_info->cleaner_kthread);

	FUNC0(FUNC35(&fs_info->delayed_iputs));
	FUNC39(BTRFS_FS_CLOSING_DONE, &fs_info->flags);

	FUNC12(fs_info);
	FUNC0(FUNC35(&fs_info->delalloc_roots));

	if (FUNC37(&fs_info->delalloc_bytes)) {
		FUNC15(fs_info, "at unmount delalloc count %lld",
		       FUNC37(&fs_info->delalloc_bytes));
	}

	if (FUNC37(&fs_info->dio_bytes))
		FUNC15(fs_info, "at unmount dio bytes count %lld",
			   FUNC37(&fs_info->dio_bytes));

	FUNC23(fs_info);
	FUNC22(fs_info->fs_devices);

	FUNC11(fs_info);

	FUNC18(fs_info);

	/*
	 * we must make sure there is not any read request to
	 * submit after we stopping all workers.
	 */
	FUNC31(fs_info->btree_inode->i_mapping);
	FUNC21(fs_info);

	FUNC9(fs_info);

	FUNC28(BTRFS_FS_OPEN, &fs_info->flags);
	FUNC30(fs_info, 1);

	FUNC32(fs_info->btree_inode);

#ifdef CONFIG_BTRFS_FS_CHECK_INTEGRITY
	if (btrfs_test_opt(fs_info, CHECK_INTEGRITY))
		btrfsic_unmount(fs_info->fs_devices);
#endif

	FUNC16(&fs_info->mapping_tree);
	FUNC3(fs_info->fs_devices);

	FUNC36(&fs_info->dirty_metadata_bytes);
	FUNC36(&fs_info->delalloc_bytes);
	FUNC36(&fs_info->dio_bytes);
	FUNC36(&fs_info->dev_replace.bio_counter);
	FUNC27(&fs_info->subvol_srcu);

	FUNC10(fs_info);
	FUNC14(fs_info);
	FUNC13(fs_info);
}