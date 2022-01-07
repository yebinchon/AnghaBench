
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {scalar_t__ i_size; } ;
struct TYPE_2__ {int io_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int EXTENT_DELALLOC ;
 int btrfs_wait_ordered_range (struct inode*,int ,int ) ;
 int clear_extent_bit (int *,int ,scalar_t__,int ,int ,int ,int *) ;

__attribute__((used)) static int flush_dirty_cache(struct inode *inode)
{
 int ret;

 ret = btrfs_wait_ordered_range(inode, 0, (u64)-1);
 if (ret)
  clear_extent_bit(&BTRFS_I(inode)->io_tree, 0, inode->i_size - 1,
     EXTENT_DELALLOC, 0, 0, ((void*)0));

 return ret;
}
