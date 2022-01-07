
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {int log_transid_committed; int swapped_blocks; int root_item_lock; scalar_t__ anon_dev; TYPE_1__ root_key; scalar_t__ defrag_trans_start; TYPE_1__ defrag_progress; TYPE_1__ root_item; int dirty_log_pages; scalar_t__ last_log_commit; scalar_t__ log_transid; int nr_swapfiles; int snapshot_force_cow; int will_be_snapshotted; int refs; int log_batch; int log_writers; int * log_commit; int * log_ctxs; int * log_commit_wait; int log_writer_wait; int delalloc_mutex; int ordered_extent_mutex; int log_mutex; int objectid_mutex; int qgroup_meta_rsv_lock; int * log_extents_lock; int accounting_lock; int ordered_extent_lock; int delalloc_lock; int inode_lock; int * logged_list; int reloc_dirty_list; int ordered_root; int ordered_extents; int delalloc_root; int delalloc_inodes; int root_list; int dirty_list; int * block_rsv; int delayed_nodes_tree; int inode_tree; scalar_t__ nr_ordered_extents; scalar_t__ nr_delalloc_inodes; scalar_t__ highest_objectid; scalar_t__ last_trans; scalar_t__ orphan_cleanup_state; scalar_t__ state; int * commit_root; int * node; } ;
struct btrfs_fs_info {scalar_t__ generation; int fs_state; } ;


 int BTRFS_FS_STATE_DUMMY_FS_INFO ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int IO_TREE_ROOT_DIRTY_LOG_PAGES ;
 int RB_ROOT ;
 int atomic_set (int *,int ) ;
 int btrfs_qgroup_init_swapped_blocks (int *) ;
 int extent_io_tree_init (struct btrfs_fs_info*,int *,int ,int *) ;
 int init_waitqueue_head (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex_init (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void __setup_root(struct btrfs_root *root, struct btrfs_fs_info *fs_info,
    u64 objectid)
{
 bool dummy = test_bit(BTRFS_FS_STATE_DUMMY_FS_INFO, &fs_info->fs_state);
 root->node = ((void*)0);
 root->commit_root = ((void*)0);
 root->state = 0;
 root->orphan_cleanup_state = 0;

 root->last_trans = 0;
 root->highest_objectid = 0;
 root->nr_delalloc_inodes = 0;
 root->nr_ordered_extents = 0;
 root->inode_tree = RB_ROOT;
 INIT_RADIX_TREE(&root->delayed_nodes_tree, GFP_ATOMIC);
 root->block_rsv = ((void*)0);

 INIT_LIST_HEAD(&root->dirty_list);
 INIT_LIST_HEAD(&root->root_list);
 INIT_LIST_HEAD(&root->delalloc_inodes);
 INIT_LIST_HEAD(&root->delalloc_root);
 INIT_LIST_HEAD(&root->ordered_extents);
 INIT_LIST_HEAD(&root->ordered_root);
 INIT_LIST_HEAD(&root->reloc_dirty_list);
 INIT_LIST_HEAD(&root->logged_list[0]);
 INIT_LIST_HEAD(&root->logged_list[1]);
 spin_lock_init(&root->inode_lock);
 spin_lock_init(&root->delalloc_lock);
 spin_lock_init(&root->ordered_extent_lock);
 spin_lock_init(&root->accounting_lock);
 spin_lock_init(&root->log_extents_lock[0]);
 spin_lock_init(&root->log_extents_lock[1]);
 spin_lock_init(&root->qgroup_meta_rsv_lock);
 mutex_init(&root->objectid_mutex);
 mutex_init(&root->log_mutex);
 mutex_init(&root->ordered_extent_mutex);
 mutex_init(&root->delalloc_mutex);
 init_waitqueue_head(&root->log_writer_wait);
 init_waitqueue_head(&root->log_commit_wait[0]);
 init_waitqueue_head(&root->log_commit_wait[1]);
 INIT_LIST_HEAD(&root->log_ctxs[0]);
 INIT_LIST_HEAD(&root->log_ctxs[1]);
 atomic_set(&root->log_commit[0], 0);
 atomic_set(&root->log_commit[1], 0);
 atomic_set(&root->log_writers, 0);
 atomic_set(&root->log_batch, 0);
 refcount_set(&root->refs, 1);
 atomic_set(&root->will_be_snapshotted, 0);
 atomic_set(&root->snapshot_force_cow, 0);
 atomic_set(&root->nr_swapfiles, 0);
 root->log_transid = 0;
 root->log_transid_committed = -1;
 root->last_log_commit = 0;
 if (!dummy)
  extent_io_tree_init(fs_info, &root->dirty_log_pages,
        IO_TREE_ROOT_DIRTY_LOG_PAGES, ((void*)0));

 memset(&root->root_key, 0, sizeof(root->root_key));
 memset(&root->root_item, 0, sizeof(root->root_item));
 memset(&root->defrag_progress, 0, sizeof(root->defrag_progress));
 if (!dummy)
  root->defrag_trans_start = fs_info->generation;
 else
  root->defrag_trans_start = 0;
 root->root_key.objectid = objectid;
 root->anon_dev = 0;

 spin_lock_init(&root->root_item_lock);
 btrfs_qgroup_init_swapped_blocks(&root->swapped_blocks);
}
