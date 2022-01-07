
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int i_size; int i_sb; } ;
struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_block_rsv {int failfast; void* size; } ;
struct btrfs_fs_info {struct btrfs_block_rsv trans_block_rsv; int sectorsize; } ;
struct btrfs_clone_extent_info {scalar_t__ data_len; int file_offset; int data_offset; } ;
struct TYPE_3__ {int runtime_flags; struct btrfs_root* root; } ;


 int BTRFS_BLOCK_RSV_TEMP ;
 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NEEDS_FULL_SYNC ;
 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int NO_HOLES ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int __btrfs_drop_extents (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct btrfs_path*,scalar_t__,scalar_t__ const,scalar_t__*,int,int ,int ,int *) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 struct btrfs_block_rsv* btrfs_alloc_block_rsv (struct btrfs_fs_info*,int ) ;
 int btrfs_block_rsv_migrate (struct btrfs_block_rsv*,struct btrfs_block_rsv*,scalar_t__,int) ;
 int btrfs_btree_balance_dirty (struct btrfs_fs_info*) ;
 void* btrfs_calc_insert_metadata_size (struct btrfs_fs_info*,int) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_free_block_rsv (struct btrfs_fs_info*,struct btrfs_block_rsv*) ;
 int btrfs_fs_incompat (struct btrfs_fs_info*,int ) ;
 int btrfs_insert_clone_extent (struct btrfs_trans_handle*,struct inode*,struct btrfs_path*,struct btrfs_clone_extent_info*,scalar_t__) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,unsigned int) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int fill_holes (struct btrfs_trans_handle*,TYPE_1__*,struct btrfs_path*,scalar_t__,scalar_t__) ;
 int find_first_non_hole (struct inode*,scalar_t__*,scalar_t__*) ;
 scalar_t__ round_up (int ,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

int btrfs_punch_hole_range(struct inode *inode, struct btrfs_path *path,
      const u64 start, const u64 end,
      struct btrfs_clone_extent_info *clone_info,
      struct btrfs_trans_handle **trans_out)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 u64 min_size = btrfs_calc_insert_metadata_size(fs_info, 1);
 u64 ino_size = round_up(inode->i_size, fs_info->sectorsize);
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_trans_handle *trans = ((void*)0);
 struct btrfs_block_rsv *rsv;
 unsigned int rsv_count;
 u64 cur_offset;
 u64 drop_end;
 u64 len = end - start;
 int ret = 0;

 if (end <= start)
  return -EINVAL;

 rsv = btrfs_alloc_block_rsv(fs_info, BTRFS_BLOCK_RSV_TEMP);
 if (!rsv) {
  ret = -ENOMEM;
  goto out;
 }
 rsv->size = btrfs_calc_insert_metadata_size(fs_info, 1);
 rsv->failfast = 1;







 if (!btrfs_fs_incompat(fs_info, NO_HOLES) || clone_info)
  rsv_count = 3;
 else
  rsv_count = 2;

 trans = btrfs_start_transaction(root, rsv_count);
 if (IS_ERR(trans)) {
  ret = PTR_ERR(trans);
  trans = ((void*)0);
  goto out_free;
 }

 ret = btrfs_block_rsv_migrate(&fs_info->trans_block_rsv, rsv,
          min_size, 0);
 BUG_ON(ret);
 trans->block_rsv = rsv;

 cur_offset = start;
 while (cur_offset < end) {
  ret = __btrfs_drop_extents(trans, root, inode, path,
        cur_offset, end + 1, &drop_end,
        1, 0, 0, ((void*)0));
  if (ret != -ENOSPC) {







   if (clone_info && ret && ret != -EOPNOTSUPP)
    btrfs_abort_transaction(trans, ret);
   break;
  }

  trans->block_rsv = &fs_info->trans_block_rsv;

  if (!clone_info && cur_offset < drop_end &&
      cur_offset < ino_size) {
   ret = fill_holes(trans, BTRFS_I(inode), path,
     cur_offset, drop_end);
   if (ret) {






    btrfs_abort_transaction(trans, ret);
    break;
   }
  }

  if (clone_info) {
   u64 clone_len = drop_end - cur_offset;

   ret = btrfs_insert_clone_extent(trans, inode, path,
       clone_info, clone_len);
   if (ret) {
    btrfs_abort_transaction(trans, ret);
    break;
   }
   clone_info->data_len -= clone_len;
   clone_info->data_offset += clone_len;
   clone_info->file_offset += clone_len;
  }

  cur_offset = drop_end;

  ret = btrfs_update_inode(trans, root, inode);
  if (ret)
   break;

  btrfs_end_transaction(trans);
  btrfs_btree_balance_dirty(fs_info);

  trans = btrfs_start_transaction(root, rsv_count);
  if (IS_ERR(trans)) {
   ret = PTR_ERR(trans);
   trans = ((void*)0);
   break;
  }

  ret = btrfs_block_rsv_migrate(&fs_info->trans_block_rsv,
           rsv, min_size, 0);
  BUG_ON(ret);
  trans->block_rsv = rsv;

  if (!clone_info) {
   ret = find_first_non_hole(inode, &cur_offset, &len);
   if (unlikely(ret < 0))
    break;
   if (ret && !len) {
    ret = 0;
    break;
   }
  }
 }
 if (clone_info)
  set_bit(BTRFS_INODE_NEEDS_FULL_SYNC,
   &BTRFS_I(inode)->runtime_flags);

 if (ret)
  goto out_trans;

 trans->block_rsv = &fs_info->trans_block_rsv;
 if (drop_end <= end)
  drop_end = end + 1;





 if (!clone_info && cur_offset < ino_size && cur_offset < drop_end) {
  ret = fill_holes(trans, BTRFS_I(inode), path,
    cur_offset, drop_end);
  if (ret) {

   btrfs_abort_transaction(trans, ret);
   goto out_trans;
  }
 }
 if (clone_info) {
  ret = btrfs_insert_clone_extent(trans, inode, path, clone_info,
      clone_info->data_len);
  if (ret) {
   btrfs_abort_transaction(trans, ret);
   goto out_trans;
  }
 }

out_trans:
 if (!trans)
  goto out_free;

 trans->block_rsv = &fs_info->trans_block_rsv;
 if (ret)
  btrfs_end_transaction(trans);
 else
  *trans_out = trans;
out_free:
 btrfs_free_block_rsv(fs_info, rsv);
out:
 return ret;
}
