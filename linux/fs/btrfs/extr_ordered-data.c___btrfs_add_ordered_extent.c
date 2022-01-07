
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct rb_node {int dummy; } ;
struct inode {int i_sb; } ;
struct btrfs_root {int nr_ordered_extents; int ordered_extent_lock; int ordered_root; int ordered_extents; } ;
struct btrfs_ordered_inode_tree {int lock; int tree; } ;
struct btrfs_ordered_extent {int compress_type; int root_extent_list; int rb_node; int trans_list; int log_list; int completion; int work_list; int list; int wait; int refs; int flags; void* truncated_len; int inode; void* bytes_left; void* disk_len; void* len; void* start; void* file_offset; } ;
struct btrfs_fs_info {int ordered_root_lock; int ordered_roots; int delalloc_batch; int dio_bytes; } ;
struct TYPE_3__ {int lock; struct btrfs_ordered_inode_tree ordered_tree; struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_ORDERED_COMPLETE ;
 int BTRFS_ORDERED_DIRECT ;
 int BTRFS_ORDERED_IO_DONE ;
 int BUG_ON (int) ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int btrfs_mod_outstanding_extents (TYPE_1__*,int) ;
 int btrfs_ordered_extent_cache ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int igrab (struct inode*) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 struct btrfs_ordered_extent* kmem_cache_zalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int ordered_data_tree_panic (struct inode*,int ,void*) ;
 int percpu_counter_add_batch (int *,void*,int ) ;
 int refcount_set (int *,int) ;
 int set_bit (int,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_btrfs_ordered_extent_add (struct inode*,struct btrfs_ordered_extent*) ;
 struct rb_node* tree_insert (int *,void*,int *) ;

__attribute__((used)) static int __btrfs_add_ordered_extent(struct inode *inode, u64 file_offset,
          u64 start, u64 len, u64 disk_len,
          int type, int dio, int compress_type)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_ordered_inode_tree *tree;
 struct rb_node *node;
 struct btrfs_ordered_extent *entry;

 tree = &BTRFS_I(inode)->ordered_tree;
 entry = kmem_cache_zalloc(btrfs_ordered_extent_cache, GFP_NOFS);
 if (!entry)
  return -ENOMEM;

 entry->file_offset = file_offset;
 entry->start = start;
 entry->len = len;
 entry->disk_len = disk_len;
 entry->bytes_left = len;
 entry->inode = igrab(inode);
 entry->compress_type = compress_type;
 entry->truncated_len = (u64)-1;
 if (type != BTRFS_ORDERED_IO_DONE && type != BTRFS_ORDERED_COMPLETE)
  set_bit(type, &entry->flags);

 if (dio) {
  percpu_counter_add_batch(&fs_info->dio_bytes, len,
      fs_info->delalloc_batch);
  set_bit(BTRFS_ORDERED_DIRECT, &entry->flags);
 }


 refcount_set(&entry->refs, 1);
 init_waitqueue_head(&entry->wait);
 INIT_LIST_HEAD(&entry->list);
 INIT_LIST_HEAD(&entry->root_extent_list);
 INIT_LIST_HEAD(&entry->work_list);
 init_completion(&entry->completion);
 INIT_LIST_HEAD(&entry->log_list);
 INIT_LIST_HEAD(&entry->trans_list);

 trace_btrfs_ordered_extent_add(inode, entry);

 spin_lock_irq(&tree->lock);
 node = tree_insert(&tree->tree, file_offset,
      &entry->rb_node);
 if (node)
  ordered_data_tree_panic(inode, -EEXIST, file_offset);
 spin_unlock_irq(&tree->lock);

 spin_lock(&root->ordered_extent_lock);
 list_add_tail(&entry->root_extent_list,
        &root->ordered_extents);
 root->nr_ordered_extents++;
 if (root->nr_ordered_extents == 1) {
  spin_lock(&fs_info->ordered_root_lock);
  BUG_ON(!list_empty(&root->ordered_root));
  list_add_tail(&root->ordered_root, &fs_info->ordered_roots);
  spin_unlock(&fs_info->ordered_root_lock);
 }
 spin_unlock(&root->ordered_extent_lock);






 spin_lock(&BTRFS_I(inode)->lock);
 btrfs_mod_outstanding_extents(BTRFS_I(inode), 1);
 spin_unlock(&BTRFS_I(inode)->lock);

 return 0;
}
