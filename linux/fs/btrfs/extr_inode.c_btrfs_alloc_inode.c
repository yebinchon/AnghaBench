
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct super_block {scalar_t__ s_magic; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int track_uptodate; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct btrfs_inode {int dio_sem; int rb_node; int delayed_iput; int delalloc_inodes; int ordered_tree; int delalloc_mutex; int log_mutex; int sync_writers; TYPE_2__ io_failure_tree; TYPE_2__ io_tree; int extent_tree; struct inode vfs_inode; TYPE_1__ i_otime; int * delayed_node; void* defrag_compress; void* prop_compress; scalar_t__ runtime_flags; int block_rsv; scalar_t__ outstanding_extents; int lock; scalar_t__ last_log_commit; scalar_t__ last_unlink_trans; scalar_t__ dir_index; scalar_t__ index_cnt; scalar_t__ csum_bytes; scalar_t__ flags; scalar_t__ disk_i_size; scalar_t__ defrag_bytes; scalar_t__ new_delalloc_bytes; scalar_t__ delalloc_bytes; scalar_t__ logged_trans; scalar_t__ last_sub_trans; scalar_t__ last_trans; scalar_t__ generation; int * root; } ;
struct btrfs_fs_info {int dummy; } ;


 int BTRFS_BLOCK_RSV_DELALLOC ;
 void* BTRFS_COMPRESS_NONE ;
 scalar_t__ BTRFS_TEST_MAGIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IO_TREE_INODE_IO ;
 int IO_TREE_INODE_IO_FAILURE ;
 int RB_CLEAR_NODE (int *) ;
 int atomic_set (int *,int ) ;
 int btrfs_init_metadata_block_rsv (struct btrfs_fs_info*,int *,int ) ;
 int btrfs_inode_cachep ;
 int btrfs_ordered_inode_tree_init (int *) ;
 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 int extent_io_tree_init (struct btrfs_fs_info*,TYPE_2__*,int ,struct inode*) ;
 int extent_map_tree_init (int *) ;
 int init_rwsem (int *) ;
 struct btrfs_inode* kmem_cache_alloc (int ,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

struct inode *btrfs_alloc_inode(struct super_block *sb)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 struct btrfs_inode *ei;
 struct inode *inode;

 ei = kmem_cache_alloc(btrfs_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);

 ei->root = ((void*)0);
 ei->generation = 0;
 ei->last_trans = 0;
 ei->last_sub_trans = 0;
 ei->logged_trans = 0;
 ei->delalloc_bytes = 0;
 ei->new_delalloc_bytes = 0;
 ei->defrag_bytes = 0;
 ei->disk_i_size = 0;
 ei->flags = 0;
 ei->csum_bytes = 0;
 ei->index_cnt = (u64)-1;
 ei->dir_index = 0;
 ei->last_unlink_trans = 0;
 ei->last_log_commit = 0;

 spin_lock_init(&ei->lock);
 ei->outstanding_extents = 0;
 if (sb->s_magic != BTRFS_TEST_MAGIC)
  btrfs_init_metadata_block_rsv(fs_info, &ei->block_rsv,
           BTRFS_BLOCK_RSV_DELALLOC);
 ei->runtime_flags = 0;
 ei->prop_compress = BTRFS_COMPRESS_NONE;
 ei->defrag_compress = BTRFS_COMPRESS_NONE;

 ei->delayed_node = ((void*)0);

 ei->i_otime.tv_sec = 0;
 ei->i_otime.tv_nsec = 0;

 inode = &ei->vfs_inode;
 extent_map_tree_init(&ei->extent_tree);
 extent_io_tree_init(fs_info, &ei->io_tree, IO_TREE_INODE_IO, inode);
 extent_io_tree_init(fs_info, &ei->io_failure_tree,
       IO_TREE_INODE_IO_FAILURE, inode);
 ei->io_tree.track_uptodate = 1;
 ei->io_failure_tree.track_uptodate = 1;
 atomic_set(&ei->sync_writers, 0);
 mutex_init(&ei->log_mutex);
 mutex_init(&ei->delalloc_mutex);
 btrfs_ordered_inode_tree_init(&ei->ordered_tree);
 INIT_LIST_HEAD(&ei->delalloc_inodes);
 INIT_LIST_HEAD(&ei->delayed_iput);
 RB_CLEAR_NODE(&ei->rb_node);
 init_rwsem(&ei->dio_sem);

 return inode;
}
