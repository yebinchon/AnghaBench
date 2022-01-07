
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_mode; } ;
struct dentry {int dummy; } ;
struct ceph_fs_client {int max_file_size; } ;


 int ATTR_MODE ;
 int ATTR_SIZE ;
 scalar_t__ CEPH_NOSNAP ;
 int EDQUOT ;
 int EFBIG ;
 int EROFS ;
 int __ceph_setattr (struct inode*,struct iattr*) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 scalar_t__ ceph_quota_is_max_bytes_exceeded (struct inode*,scalar_t__) ;
 scalar_t__ ceph_snap (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ max (int ,int ) ;
 int posix_acl_chmod (struct inode*,int ) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;

int ceph_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
 int err;

 if (ceph_snap(inode) != CEPH_NOSNAP)
  return -EROFS;

 err = setattr_prepare(dentry, attr);
 if (err != 0)
  return err;

 if ((attr->ia_valid & ATTR_SIZE) &&
     attr->ia_size > max(inode->i_size, fsc->max_file_size))
  return -EFBIG;

 if ((attr->ia_valid & ATTR_SIZE) &&
     ceph_quota_is_max_bytes_exceeded(inode, attr->ia_size))
  return -EDQUOT;

 err = __ceph_setattr(inode, attr);

 if (err >= 0 && (attr->ia_valid & ATTR_MODE))
  err = posix_acl_chmod(inode, attr->ia_mode);

 return err;
}
