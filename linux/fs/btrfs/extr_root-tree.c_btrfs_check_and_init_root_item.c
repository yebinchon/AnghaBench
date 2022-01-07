
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root_item {int inode; } ;


 int BTRFS_INODE_ROOT_ITEM_INIT ;
 int btrfs_set_root_flags (struct btrfs_root_item*,int ) ;
 int btrfs_set_root_limit (struct btrfs_root_item*,int ) ;
 int btrfs_set_stack_inode_flags (int *,int) ;
 int btrfs_stack_inode_flags (int *) ;

void btrfs_check_and_init_root_item(struct btrfs_root_item *root_item)
{
 u64 inode_flags = btrfs_stack_inode_flags(&root_item->inode);

 if (!(inode_flags & BTRFS_INODE_ROOT_ITEM_INIT)) {
  inode_flags |= BTRFS_INODE_ROOT_ITEM_INIT;
  btrfs_set_stack_inode_flags(&root_item->inode, inode_flags);
  btrfs_set_root_flags(root_item, 0);
  btrfs_set_root_limit(root_item, 0);
 }
}
