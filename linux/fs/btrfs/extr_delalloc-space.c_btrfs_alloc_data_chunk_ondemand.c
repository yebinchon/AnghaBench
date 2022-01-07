
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_space_info {scalar_t__ total_bytes; int lock; int flags; int total_bytes_pinned; int force_alloc; int full; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_inode {struct btrfs_root* root; } ;
struct btrfs_fs_info {int sectorsize; struct btrfs_space_info* data_sinfo; } ;
struct TYPE_4__ {int journal_info; } ;
struct TYPE_3__ {int flags; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 int ASSERT (int ) ;
 int BTRFS_TOTAL_BYTES_PINNED_BATCH ;
 int BTRFS_TRANS_HAVE_FREE_BGS ;
 int CHUNK_ALLOC_FORCE ;
 int CHUNK_ALLOC_NO_FORCE ;
 int ENOSPC ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int U64_MAX ;
 int __percpu_counter_compare (int *,scalar_t__,int ) ;
 int btrfs_chunk_alloc (struct btrfs_trans_handle*,scalar_t__,int ) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 scalar_t__ btrfs_data_alloc_profile (struct btrfs_fs_info*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 scalar_t__ btrfs_is_free_space_inode (struct btrfs_inode*) ;
 struct btrfs_trans_handle* btrfs_join_transaction (struct btrfs_root*) ;
 int btrfs_space_info_update_bytes_may_use (struct btrfs_fs_info*,struct btrfs_space_info*,scalar_t__) ;
 scalar_t__ btrfs_space_info_used (struct btrfs_space_info*,int) ;
 int btrfs_start_delalloc_roots (struct btrfs_fs_info*,int) ;
 int btrfs_wait_on_delayed_iputs (struct btrfs_fs_info*) ;
 int btrfs_wait_ordered_roots (struct btrfs_fs_info*,int ,int ,scalar_t__) ;
 TYPE_2__* current ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_btrfs_space_reservation (struct btrfs_fs_info*,char*,int ,scalar_t__,int) ;

int btrfs_alloc_data_chunk_ondemand(struct btrfs_inode *inode, u64 bytes)
{
 struct btrfs_root *root = inode->root;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_space_info *data_sinfo = fs_info->data_sinfo;
 u64 used;
 int ret = 0;
 int need_commit = 2;
 int have_pinned_space;


 bytes = ALIGN(bytes, fs_info->sectorsize);

 if (btrfs_is_free_space_inode(inode)) {
  need_commit = 0;
  ASSERT(current->journal_info);
 }

again:

 spin_lock(&data_sinfo->lock);
 used = btrfs_space_info_used(data_sinfo, 1);

 if (used + bytes > data_sinfo->total_bytes) {
  struct btrfs_trans_handle *trans;





  if (!data_sinfo->full) {
   u64 alloc_target;

   data_sinfo->force_alloc = CHUNK_ALLOC_FORCE;
   spin_unlock(&data_sinfo->lock);

   alloc_target = btrfs_data_alloc_profile(fs_info);
   trans = btrfs_join_transaction(root);
   if (IS_ERR(trans))
    return PTR_ERR(trans);

   ret = btrfs_chunk_alloc(trans, alloc_target,
      CHUNK_ALLOC_NO_FORCE);
   btrfs_end_transaction(trans);
   if (ret < 0) {
    if (ret != -ENOSPC)
     return ret;
    else {
     have_pinned_space = 1;
     goto commit_trans;
    }
   }

   goto again;
  }






  have_pinned_space = __percpu_counter_compare(
   &data_sinfo->total_bytes_pinned,
   used + bytes - data_sinfo->total_bytes,
   BTRFS_TOTAL_BYTES_PINNED_BATCH);
  spin_unlock(&data_sinfo->lock);


commit_trans:
  if (need_commit) {
   need_commit--;

   if (need_commit > 0) {
    btrfs_start_delalloc_roots(fs_info, -1);
    btrfs_wait_ordered_roots(fs_info, U64_MAX, 0,
        (u64)-1);
   }

   trans = btrfs_join_transaction(root);
   if (IS_ERR(trans))
    return PTR_ERR(trans);
   if (have_pinned_space >= 0 ||
       test_bit(BTRFS_TRANS_HAVE_FREE_BGS,
         &trans->transaction->flags) ||
       need_commit > 0) {
    ret = btrfs_commit_transaction(trans);
    if (ret)
     return ret;
    ret = btrfs_wait_on_delayed_iputs(fs_info);
    if (ret)
     return ret;
    goto again;
   } else {
    btrfs_end_transaction(trans);
   }
  }

  trace_btrfs_space_reservation(fs_info,
           "space_info:enospc",
           data_sinfo->flags, bytes, 1);
  return -ENOSPC;
 }
 btrfs_space_info_update_bytes_may_use(fs_info, data_sinfo, bytes);
 spin_unlock(&data_sinfo->lock);

 return 0;
}
