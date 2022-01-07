
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct TYPE_3__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int btrfs_ino (TYPE_1__*) ;
 int inode_prop_iterator ;
 int iterate_object_props (struct btrfs_root*,struct btrfs_path*,int ,int ,struct inode*) ;

int btrfs_load_inode_props(struct inode *inode, struct btrfs_path *path)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 u64 ino = btrfs_ino(BTRFS_I(inode));
 int ret;

 ret = iterate_object_props(root, path, ino, inode_prop_iterator, inode);

 return ret;
}
