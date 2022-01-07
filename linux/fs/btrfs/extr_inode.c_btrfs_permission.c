
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_mode; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {int flags; struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_READONLY ;
 int EACCES ;
 int EROFS ;
 int MAY_WRITE ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ btrfs_root_readonly (struct btrfs_root*) ;
 int generic_permission (struct inode*,int) ;

__attribute__((used)) static int btrfs_permission(struct inode *inode, int mask)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 umode_t mode = inode->i_mode;

 if (mask & MAY_WRITE &&
     (S_ISREG(mode) || S_ISDIR(mode) || S_ISLNK(mode))) {
  if (btrfs_root_readonly(root))
   return -EROFS;
  if (BTRFS_I(inode)->flags & BTRFS_INODE_READONLY)
   return -EACCES;
 }
 return generic_permission(inode, mask);
}
