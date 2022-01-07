
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;


 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_uuid_tree_remove (struct btrfs_trans_handle*,int *,int ,int ) ;

__attribute__((used)) static int btrfs_uuid_iter_rem(struct btrfs_root *uuid_root, u8 *uuid, u8 type,
          u64 subid)
{
 struct btrfs_trans_handle *trans;
 int ret;


 trans = btrfs_start_transaction(uuid_root, 1);
 if (IS_ERR(trans)) {
  ret = PTR_ERR(trans);
  goto out;
 }

 ret = btrfs_uuid_tree_remove(trans, uuid, type, subid);
 btrfs_end_transaction(trans);

out:
 return ret;
}
