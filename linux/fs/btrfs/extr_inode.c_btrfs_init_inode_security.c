
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;


 int btrfs_init_acl (struct btrfs_trans_handle*,struct inode*,struct inode*) ;
 int btrfs_xattr_security_init (struct btrfs_trans_handle*,struct inode*,struct inode*,struct qstr const*) ;

__attribute__((used)) static int btrfs_init_inode_security(struct btrfs_trans_handle *trans,
         struct inode *inode, struct inode *dir,
         const struct qstr *qstr)
{
 int err;

 err = btrfs_init_acl(trans, inode, dir);
 if (!err)
  err = btrfs_xattr_security_init(trans, inode, dir, qstr);
 return err;
}
