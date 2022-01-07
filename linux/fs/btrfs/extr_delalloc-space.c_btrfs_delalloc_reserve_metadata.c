
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_block_rsv {int lock; int qgroup_rsv_reserved; } ;
struct btrfs_inode {int delalloc_mutex; int lock; scalar_t__ csum_bytes; struct btrfs_block_rsv block_rsv; struct btrfs_root* root; } ;
struct btrfs_fs_info {int sectorsize; } ;
typedef enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;
struct TYPE_2__ {scalar_t__ journal_info; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 int BTRFS_RESERVE_FLUSH_ALL ;
 int BTRFS_RESERVE_FLUSH_LIMIT ;
 int BTRFS_RESERVE_NO_FLUSH ;
 int btrfs_block_rsv_add_bytes (struct btrfs_block_rsv*,scalar_t__,int) ;
 int btrfs_calculate_inode_block_rsv_size (struct btrfs_fs_info*,struct btrfs_inode*) ;
 int btrfs_ino (struct btrfs_inode*) ;
 scalar_t__ btrfs_is_free_space_inode (struct btrfs_inode*) ;
 int btrfs_mod_outstanding_extents (struct btrfs_inode*,unsigned int) ;
 int btrfs_qgroup_free_meta_prealloc (struct btrfs_root*,scalar_t__) ;
 int btrfs_qgroup_reserve_meta_prealloc (struct btrfs_root*,scalar_t__,int) ;
 int btrfs_reserve_metadata_bytes (struct btrfs_root*,struct btrfs_block_rsv*,scalar_t__,int) ;
 scalar_t__ btrfs_transaction_in_commit (struct btrfs_fs_info*) ;
 int calc_inode_reservations (struct btrfs_fs_info*,scalar_t__,scalar_t__*,scalar_t__*) ;
 unsigned int count_max_extents (scalar_t__) ;
 TYPE_1__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_btrfs_space_reservation (struct btrfs_fs_info*,char*,int ,scalar_t__,int) ;

int btrfs_delalloc_reserve_metadata(struct btrfs_inode *inode, u64 num_bytes)
{
 struct btrfs_root *root = inode->root;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_block_rsv *block_rsv = &inode->block_rsv;
 u64 meta_reserve, qgroup_reserve;
 unsigned nr_extents;
 enum btrfs_reserve_flush_enum flush = BTRFS_RESERVE_FLUSH_ALL;
 int ret = 0;
 bool delalloc_lock = 1;
 if (btrfs_is_free_space_inode(inode)) {
  flush = BTRFS_RESERVE_NO_FLUSH;
  delalloc_lock = 0;
 } else {
  if (current->journal_info)
   flush = BTRFS_RESERVE_FLUSH_LIMIT;

  if (btrfs_transaction_in_commit(fs_info))
   schedule_timeout(1);
 }

 if (delalloc_lock)
  mutex_lock(&inode->delalloc_mutex);

 num_bytes = ALIGN(num_bytes, fs_info->sectorsize);
 calc_inode_reservations(fs_info, num_bytes, &meta_reserve,
    &qgroup_reserve);
 ret = btrfs_qgroup_reserve_meta_prealloc(root, qgroup_reserve, 1);
 if (ret)
  goto out_fail;
 ret = btrfs_reserve_metadata_bytes(root, block_rsv, meta_reserve, flush);
 if (ret)
  goto out_qgroup;







 spin_lock(&inode->lock);
 nr_extents = count_max_extents(num_bytes);
 btrfs_mod_outstanding_extents(inode, nr_extents);
 inode->csum_bytes += num_bytes;
 btrfs_calculate_inode_block_rsv_size(fs_info, inode);
 spin_unlock(&inode->lock);


 btrfs_block_rsv_add_bytes(block_rsv, meta_reserve, 0);
 trace_btrfs_space_reservation(root->fs_info, "delalloc",
          btrfs_ino(inode), meta_reserve, 1);

 spin_lock(&block_rsv->lock);
 block_rsv->qgroup_rsv_reserved += qgroup_reserve;
 spin_unlock(&block_rsv->lock);

 if (delalloc_lock)
  mutex_unlock(&inode->delalloc_mutex);
 return 0;
out_qgroup:
 btrfs_qgroup_free_meta_prealloc(root, qgroup_reserve);
out_fail:
 if (delalloc_lock)
  mutex_unlock(&inode->delalloc_mutex);
 return ret;
}
