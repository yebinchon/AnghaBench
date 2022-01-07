
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_size; int i_sb; } ;
struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_block_rsv {int size; int failfast; } ;
struct btrfs_fs_info {int sectorsize; struct btrfs_block_rsv trans_block_rsv; } ;
struct TYPE_2__ {int runtime_flags; struct btrfs_root* root; } ;


 int BTRFS_BLOCK_RSV_TEMP ;
 int BTRFS_EXTENT_DATA_KEY ;
 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NEEDS_FULL_SYNC ;
 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int NEED_TRUNCATE_BLOCK ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 struct btrfs_block_rsv* btrfs_alloc_block_rsv (struct btrfs_fs_info*,int ) ;
 int btrfs_block_rsv_migrate (struct btrfs_block_rsv*,struct btrfs_block_rsv*,int,int) ;
 int btrfs_block_rsv_release (struct btrfs_fs_info*,struct btrfs_block_rsv*,int) ;
 int btrfs_btree_balance_dirty (struct btrfs_fs_info*) ;
 int btrfs_calc_metadata_size (struct btrfs_fs_info*,int) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_free_block_rsv (struct btrfs_fs_info*,struct btrfs_block_rsv*) ;
 int btrfs_ordered_update_i_size (struct inode*,int,int *) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_truncate_block (struct inode*,int,int ,int ) ;
 int btrfs_truncate_inode_items (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,int,int ) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int btrfs_wait_ordered_range (struct inode*,int,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int btrfs_truncate(struct inode *inode, bool skip_writeback)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_block_rsv *rsv;
 int ret;
 struct btrfs_trans_handle *trans;
 u64 mask = fs_info->sectorsize - 1;
 u64 min_size = btrfs_calc_metadata_size(fs_info, 1);

 if (!skip_writeback) {
  ret = btrfs_wait_ordered_range(inode, inode->i_size & (~mask),
            (u64)-1);
  if (ret)
   return ret;
 }
 rsv = btrfs_alloc_block_rsv(fs_info, BTRFS_BLOCK_RSV_TEMP);
 if (!rsv)
  return -ENOMEM;
 rsv->size = min_size;
 rsv->failfast = 1;





 trans = btrfs_start_transaction(root, 2);
 if (IS_ERR(trans)) {
  ret = PTR_ERR(trans);
  goto out;
 }


 ret = btrfs_block_rsv_migrate(&fs_info->trans_block_rsv, rsv,
          min_size, 0);
 BUG_ON(ret);
 set_bit(BTRFS_INODE_NEEDS_FULL_SYNC, &BTRFS_I(inode)->runtime_flags);
 trans->block_rsv = rsv;

 while (1) {
  ret = btrfs_truncate_inode_items(trans, root, inode,
       inode->i_size,
       BTRFS_EXTENT_DATA_KEY);
  trans->block_rsv = &fs_info->trans_block_rsv;
  if (ret != -ENOSPC && ret != -EAGAIN)
   break;

  ret = btrfs_update_inode(trans, root, inode);
  if (ret)
   break;

  btrfs_end_transaction(trans);
  btrfs_btree_balance_dirty(fs_info);

  trans = btrfs_start_transaction(root, 2);
  if (IS_ERR(trans)) {
   ret = PTR_ERR(trans);
   trans = ((void*)0);
   break;
  }

  btrfs_block_rsv_release(fs_info, rsv, -1);
  ret = btrfs_block_rsv_migrate(&fs_info->trans_block_rsv,
           rsv, min_size, 0);
  BUG_ON(ret);
  trans->block_rsv = rsv;
 }







 if (ret == NEED_TRUNCATE_BLOCK) {
  btrfs_end_transaction(trans);
  btrfs_btree_balance_dirty(fs_info);

  ret = btrfs_truncate_block(inode, inode->i_size, 0, 0);
  if (ret)
   goto out;
  trans = btrfs_start_transaction(root, 1);
  if (IS_ERR(trans)) {
   ret = PTR_ERR(trans);
   goto out;
  }
  btrfs_ordered_update_i_size(inode, inode->i_size, ((void*)0));
 }

 if (trans) {
  int ret2;

  trans->block_rsv = &fs_info->trans_block_rsv;
  ret2 = btrfs_update_inode(trans, root, inode);
  if (ret2 && !ret)
   ret = ret2;

  ret2 = btrfs_end_transaction(trans);
  if (ret2 && !ret)
   ret = ret2;
  btrfs_btree_balance_dirty(fs_info);
 }
out:
 btrfs_free_block_rsv(fs_info, rsv);

 return ret;
}
