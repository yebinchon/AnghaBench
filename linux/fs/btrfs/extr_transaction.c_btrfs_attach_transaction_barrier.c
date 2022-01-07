
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int fs_info; } ;


 int BTRFS_RESERVE_NO_FLUSH ;
 int ENOENT ;
 struct btrfs_trans_handle* ERR_PTR (int ) ;
 int TRANS_ATTACH ;
 int btrfs_wait_for_commit (int ,int ) ;
 struct btrfs_trans_handle* start_transaction (struct btrfs_root*,int ,int ,int ,int) ;

struct btrfs_trans_handle *
btrfs_attach_transaction_barrier(struct btrfs_root *root)
{
 struct btrfs_trans_handle *trans;

 trans = start_transaction(root, 0, TRANS_ATTACH,
      BTRFS_RESERVE_NO_FLUSH, 1);
 if (trans == ERR_PTR(-ENOENT))
  btrfs_wait_for_commit(root->fs_info, 0);

 return trans;
}
