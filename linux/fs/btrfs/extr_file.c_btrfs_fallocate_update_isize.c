
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int i_ctime; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int const FALLOC_FL_KEEP_SIZE ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_ordered_update_i_size (struct inode*,scalar_t__ const,int *) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int current_time (struct inode*) ;
 scalar_t__ const i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__ const) ;

__attribute__((used)) static int btrfs_fallocate_update_isize(struct inode *inode,
     const u64 end,
     const int mode)
{
 struct btrfs_trans_handle *trans;
 struct btrfs_root *root = BTRFS_I(inode)->root;
 int ret;
 int ret2;

 if (mode & FALLOC_FL_KEEP_SIZE || end <= i_size_read(inode))
  return 0;

 trans = btrfs_start_transaction(root, 1);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 inode->i_ctime = current_time(inode);
 i_size_write(inode, end);
 btrfs_ordered_update_i_size(inode, end, ((void*)0));
 ret = btrfs_update_inode(trans, root, inode);
 ret2 = btrfs_end_transaction(trans);

 return ret ? ret : ret2;
}
