
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct find_free_extent_ctl {scalar_t__ loop; int orig_have_caching_bg; scalar_t__ index; scalar_t__ empty_size; scalar_t__ empty_cluster; int flags; scalar_t__ have_caching_bg; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {scalar_t__ objectid; } ;
struct btrfs_fs_info {struct btrfs_root* extent_root; } ;
struct btrfs_free_cluster {int lock; scalar_t__ window_start; } ;
struct TYPE_2__ {struct btrfs_trans_handle* journal_info; } ;


 scalar_t__ BTRFS_NR_RAID_TYPES ;
 int CHUNK_ALLOC_FORCE ;
 int ENOSPC ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 scalar_t__ LOOP_ALLOC_CHUNK ;
 scalar_t__ LOOP_CACHING_NOWAIT ;
 scalar_t__ LOOP_CACHING_WAIT ;
 scalar_t__ LOOP_NO_EMPTY_SIZE ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_chunk_alloc (struct btrfs_trans_handle*,int ,int ) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_join_transaction (struct btrfs_root*) ;
 TYPE_1__* current ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int find_free_extent_update_loop(struct btrfs_fs_info *fs_info,
     struct btrfs_free_cluster *last_ptr,
     struct btrfs_key *ins,
     struct find_free_extent_ctl *ffe_ctl,
     int full_search, bool use_cluster)
{
 struct btrfs_root *root = fs_info->extent_root;
 int ret;

 if ((ffe_ctl->loop == LOOP_CACHING_NOWAIT) &&
     ffe_ctl->have_caching_bg && !ffe_ctl->orig_have_caching_bg)
  ffe_ctl->orig_have_caching_bg = 1;

 if (!ins->objectid && ffe_ctl->loop >= LOOP_CACHING_WAIT &&
     ffe_ctl->have_caching_bg)
  return 1;

 if (!ins->objectid && ++(ffe_ctl->index) < BTRFS_NR_RAID_TYPES)
  return 1;

 if (ins->objectid) {
  if (!use_cluster && last_ptr) {
   spin_lock(&last_ptr->lock);
   last_ptr->window_start = ins->objectid;
   spin_unlock(&last_ptr->lock);
  }
  return 0;
 }
 if (ffe_ctl->loop < LOOP_NO_EMPTY_SIZE) {
  ffe_ctl->index = 0;
  if (ffe_ctl->loop == LOOP_CACHING_NOWAIT) {





   if (ffe_ctl->orig_have_caching_bg || !full_search)
    ffe_ctl->loop = LOOP_CACHING_WAIT;
   else
    ffe_ctl->loop = LOOP_ALLOC_CHUNK;
  } else {
   ffe_ctl->loop++;
  }

  if (ffe_ctl->loop == LOOP_ALLOC_CHUNK) {
   struct btrfs_trans_handle *trans;
   int exist = 0;

   trans = current->journal_info;
   if (trans)
    exist = 1;
   else
    trans = btrfs_join_transaction(root);

   if (IS_ERR(trans)) {
    ret = PTR_ERR(trans);
    return ret;
   }

   ret = btrfs_chunk_alloc(trans, ffe_ctl->flags,
      CHUNK_ALLOC_FORCE);






   if (ret == -ENOSPC)
    ffe_ctl->loop = LOOP_NO_EMPTY_SIZE;


   if (ret < 0 && ret != -ENOSPC)
    btrfs_abort_transaction(trans, ret);
   else
    ret = 0;
   if (!exist)
    btrfs_end_transaction(trans);
   if (ret)
    return ret;
  }

  if (ffe_ctl->loop == LOOP_NO_EMPTY_SIZE) {




   if (ffe_ctl->empty_size == 0 &&
       ffe_ctl->empty_cluster == 0)
    return -ENOSPC;
   ffe_ctl->empty_size = 0;
   ffe_ctl->empty_cluster = 0;
  }
  return 1;
 }
 return -ENOSPC;
}
