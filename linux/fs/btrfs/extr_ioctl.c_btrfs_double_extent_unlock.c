
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int io_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int unlock_extent (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void btrfs_double_extent_unlock(struct inode *inode1, u64 loff1,
           struct inode *inode2, u64 loff2, u64 len)
{
 unlock_extent(&BTRFS_I(inode1)->io_tree, loff1, loff1 + len - 1);
 unlock_extent(&BTRFS_I(inode2)->io_tree, loff2, loff2 + len - 1);
}
