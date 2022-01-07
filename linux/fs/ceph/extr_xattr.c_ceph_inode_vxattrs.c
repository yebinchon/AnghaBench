
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct ceph_vxattr {int dummy; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 struct ceph_vxattr* ceph_dir_vxattrs ;
 struct ceph_vxattr* ceph_file_vxattrs ;

__attribute__((used)) static struct ceph_vxattr *ceph_inode_vxattrs(struct inode *inode)
{
 if (S_ISDIR(inode->i_mode))
  return ceph_dir_vxattrs;
 else if (S_ISREG(inode->i_mode))
  return ceph_file_vxattrs;
 return ((void*)0);
}
