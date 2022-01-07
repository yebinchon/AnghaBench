
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int BTRFS_RESERVE_FLUSH_ALL ;
 int TRANS_START ;
 struct btrfs_trans_handle* start_transaction (struct btrfs_root*,unsigned int,int ,int ,int) ;

struct btrfs_trans_handle *btrfs_start_transaction(struct btrfs_root *root,
         unsigned int num_items)
{
 return start_transaction(root, num_items, TRANS_START,
     BTRFS_RESERVE_FLUSH_ALL, 1);
}
