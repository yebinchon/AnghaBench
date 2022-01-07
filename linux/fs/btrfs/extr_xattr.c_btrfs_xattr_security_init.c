
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;


 int btrfs_initxattrs ;
 int security_inode_init_security (struct inode*,struct inode*,struct qstr const*,int *,struct btrfs_trans_handle*) ;

int btrfs_xattr_security_init(struct btrfs_trans_handle *trans,
         struct inode *inode, struct inode *dir,
         const struct qstr *qstr)
{
 return security_inode_init_security(inode, dir, qstr,
         &btrfs_initxattrs, trans);
}
