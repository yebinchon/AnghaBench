
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct extent_io_tree {struct inode* private_data; } ;


 int btrfs_panic (int ,int,char*) ;
 int btrfs_sb (int ) ;

__attribute__((used)) static void extent_io_tree_panic(struct extent_io_tree *tree, int err)
{
 struct inode *inode = tree->private_data;

 btrfs_panic(btrfs_sb(inode->i_sb), err,
 "locking error: extent tree was modified by another thread while locked");
}
