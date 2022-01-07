
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_space_info {int flags; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {struct btrfs_root* extent_root; } ;




 int CHUNK_ALLOC_FORCE ;
 int CHUNK_ALLOC_NO_FORCE ;

 int ENOSPC ;






 int IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;

 int btrfs_chunk_alloc (struct btrfs_trans_handle*,int ,int ) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_join_transaction (struct btrfs_root*) ;
 int btrfs_metadata_alloc_profile (struct btrfs_fs_info*) ;
 int btrfs_run_delayed_iputs (struct btrfs_fs_info*) ;
 int btrfs_run_delayed_items_nr (struct btrfs_trans_handle*,int) ;
 int btrfs_run_delayed_refs (struct btrfs_trans_handle*,int) ;
 int btrfs_wait_on_delayed_iputs (struct btrfs_fs_info*) ;
 int calc_reclaim_items_nr (struct btrfs_fs_info*,int) ;
 int may_commit_transaction (struct btrfs_fs_info*,struct btrfs_space_info*) ;
 int shrink_delalloc (struct btrfs_fs_info*,int,int,int) ;
 int trace_btrfs_flush_space (struct btrfs_fs_info*,int ,int,int,int) ;

__attribute__((used)) static void flush_space(struct btrfs_fs_info *fs_info,
         struct btrfs_space_info *space_info, u64 num_bytes,
         int state)
{
 struct btrfs_root *root = fs_info->extent_root;
 struct btrfs_trans_handle *trans;
 int nr;
 int ret = 0;

 switch (state) {
 case 131:
 case 132:
  if (state == 131)
   nr = calc_reclaim_items_nr(fs_info, num_bytes) * 2;
  else
   nr = -1;

  trans = btrfs_join_transaction(root);
  if (IS_ERR(trans)) {
   ret = PTR_ERR(trans);
   break;
  }
  ret = btrfs_run_delayed_items_nr(trans, nr);
  btrfs_end_transaction(trans);
  break;
 case 134:
 case 133:
  shrink_delalloc(fs_info, num_bytes * 2, num_bytes,
    state == 133);
  break;
 case 129:
 case 130:
  trans = btrfs_join_transaction(root);
  if (IS_ERR(trans)) {
   ret = PTR_ERR(trans);
   break;
  }
  if (state == 129)
   nr = calc_reclaim_items_nr(fs_info, num_bytes);
  else
   nr = 0;
  btrfs_run_delayed_refs(trans, nr);
  btrfs_end_transaction(trans);
  break;
 case 137:
 case 136:
  trans = btrfs_join_transaction(root);
  if (IS_ERR(trans)) {
   ret = PTR_ERR(trans);
   break;
  }
  ret = btrfs_chunk_alloc(trans,
    btrfs_metadata_alloc_profile(fs_info),
    (state == 137) ? CHUNK_ALLOC_NO_FORCE :
     CHUNK_ALLOC_FORCE);
  btrfs_end_transaction(trans);
  if (ret > 0 || ret == -ENOSPC)
   ret = 0;
  break;
 case 128:





  btrfs_run_delayed_iputs(fs_info);
  btrfs_wait_on_delayed_iputs(fs_info);
  break;
 case 135:
  ret = may_commit_transaction(fs_info, space_info);
  break;
 default:
  ret = -ENOSPC;
  break;
 }

 trace_btrfs_flush_space(fs_info, space_info->flags, num_bytes, state,
    ret);
 return;
}
