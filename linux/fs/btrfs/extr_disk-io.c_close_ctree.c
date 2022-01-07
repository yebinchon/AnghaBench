
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bio_counter; } ;
struct btrfs_fs_info {int subvol_srcu; TYPE_1__ dev_replace; int dio_bytes; int delalloc_bytes; int dirty_metadata_bytes; int fs_devices; int mapping_tree; TYPE_2__* btree_inode; int flags; int delalloc_roots; int delayed_iputs; int cleaner_kthread; int transaction_kthread; int fs_state; int sb; int async_reclaim_work; int defrag_running; int transaction_wait; int uuid_tree_rescan_sem; } ;
struct TYPE_4__ {int i_mapping; } ;


 int ASSERT (int ) ;
 int BTRFS_FS_CLOSING_DONE ;
 int BTRFS_FS_CLOSING_START ;
 int BTRFS_FS_OPEN ;
 int BTRFS_FS_STATE_ERROR ;
 int BTRFS_FS_STATE_TRANS_ABORTED ;
 int CHECK_INTEGRITY ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_cleanup_defrag_inodes (struct btrfs_fs_info*) ;
 int btrfs_close_devices (int ) ;
 int btrfs_commit_super (struct btrfs_fs_info*) ;
 int btrfs_delete_unused_bgs (struct btrfs_fs_info*) ;
 int btrfs_dev_replace_suspend_for_unmount (struct btrfs_fs_info*) ;
 int btrfs_err (struct btrfs_fs_info*,char*,int) ;
 int btrfs_error_commit_super (struct btrfs_fs_info*) ;
 int btrfs_free_block_groups (struct btrfs_fs_info*) ;
 int btrfs_free_csum_hash (struct btrfs_fs_info*) ;
 int btrfs_free_fs_roots (struct btrfs_fs_info*) ;
 int btrfs_free_qgroup_config (struct btrfs_fs_info*) ;
 int btrfs_free_ref_cache (struct btrfs_fs_info*) ;
 int btrfs_free_stripe_hash_table (struct btrfs_fs_info*) ;
 int btrfs_info (struct btrfs_fs_info*,char*,scalar_t__) ;
 int btrfs_mapping_tree_free (int *) ;
 int btrfs_pause_balance (struct btrfs_fs_info*) ;
 int btrfs_put_block_group_cache (struct btrfs_fs_info*) ;
 int btrfs_qgroup_wait_for_completion (struct btrfs_fs_info*,int) ;
 int btrfs_scrub_cancel (struct btrfs_fs_info*) ;
 int btrfs_stop_all_workers (struct btrfs_fs_info*) ;
 int btrfs_sysfs_remove_fsid (int ) ;
 int btrfs_sysfs_remove_mounted (struct btrfs_fs_info*) ;
 scalar_t__ btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int btrfsic_unmount (int ) ;
 int cancel_work_sync (int *) ;
 int cleanup_srcu_struct (int *) ;
 int clear_bit (int ,int *) ;
 int down (int *) ;
 int free_root_pointers (struct btrfs_fs_info*,int) ;
 int invalidate_inode_pages2 (int ) ;
 int iput (TYPE_2__*) ;
 int kthread_park (int ) ;
 int kthread_stop (int ) ;
 int list_empty (int *) ;
 int percpu_counter_destroy (int *) ;
 scalar_t__ percpu_counter_sum (int *) ;
 int sb_rdonly (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int up (int *) ;
 int wait_event (int ,int) ;

void close_ctree(struct btrfs_fs_info *fs_info)
{
 int ret;

 set_bit(BTRFS_FS_CLOSING_START, &fs_info->flags);






 kthread_park(fs_info->cleaner_kthread);


 btrfs_qgroup_wait_for_completion(fs_info, 0);


 down(&fs_info->uuid_tree_rescan_sem);

 up(&fs_info->uuid_tree_rescan_sem);


 btrfs_pause_balance(fs_info);

 btrfs_dev_replace_suspend_for_unmount(fs_info);

 btrfs_scrub_cancel(fs_info);


 wait_event(fs_info->transaction_wait,
     (atomic_read(&fs_info->defrag_running) == 0));


 btrfs_cleanup_defrag_inodes(fs_info);

 cancel_work_sync(&fs_info->async_reclaim_work);

 if (!sb_rdonly(fs_info->sb)) {




  btrfs_delete_unused_bgs(fs_info);

  ret = btrfs_commit_super(fs_info);
  if (ret)
   btrfs_err(fs_info, "commit super ret %d", ret);
 }

 if (test_bit(BTRFS_FS_STATE_ERROR, &fs_info->fs_state) ||
     test_bit(BTRFS_FS_STATE_TRANS_ABORTED, &fs_info->fs_state))
  btrfs_error_commit_super(fs_info);

 kthread_stop(fs_info->transaction_kthread);
 kthread_stop(fs_info->cleaner_kthread);

 ASSERT(list_empty(&fs_info->delayed_iputs));
 set_bit(BTRFS_FS_CLOSING_DONE, &fs_info->flags);

 btrfs_free_qgroup_config(fs_info);
 ASSERT(list_empty(&fs_info->delalloc_roots));

 if (percpu_counter_sum(&fs_info->delalloc_bytes)) {
  btrfs_info(fs_info, "at unmount delalloc count %lld",
         percpu_counter_sum(&fs_info->delalloc_bytes));
 }

 if (percpu_counter_sum(&fs_info->dio_bytes))
  btrfs_info(fs_info, "at unmount dio bytes count %lld",
      percpu_counter_sum(&fs_info->dio_bytes));

 btrfs_sysfs_remove_mounted(fs_info);
 btrfs_sysfs_remove_fsid(fs_info->fs_devices);

 btrfs_free_fs_roots(fs_info);

 btrfs_put_block_group_cache(fs_info);





 invalidate_inode_pages2(fs_info->btree_inode->i_mapping);
 btrfs_stop_all_workers(fs_info);

 btrfs_free_block_groups(fs_info);

 clear_bit(BTRFS_FS_OPEN, &fs_info->flags);
 free_root_pointers(fs_info, 1);

 iput(fs_info->btree_inode);






 btrfs_mapping_tree_free(&fs_info->mapping_tree);
 btrfs_close_devices(fs_info->fs_devices);

 percpu_counter_destroy(&fs_info->dirty_metadata_bytes);
 percpu_counter_destroy(&fs_info->delalloc_bytes);
 percpu_counter_destroy(&fs_info->dio_bytes);
 percpu_counter_destroy(&fs_info->dev_replace.bio_counter);
 cleanup_srcu_struct(&fs_info->subvol_srcu);

 btrfs_free_csum_hash(fs_info);
 btrfs_free_stripe_hash_table(fs_info);
 btrfs_free_ref_cache(fs_info);
}
