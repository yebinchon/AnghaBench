
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;


 int __btrfs_end_transaction (struct btrfs_trans_handle*,int ) ;

int btrfs_end_transaction(struct btrfs_trans_handle *trans)
{
 return __btrfs_end_transaction(trans, 0);
}
