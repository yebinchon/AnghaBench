
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_vxattr {scalar_t__ name; } ;


 struct ceph_vxattr* ceph_inode_vxattrs (struct inode*) ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static struct ceph_vxattr *ceph_match_vxattr(struct inode *inode,
      const char *name)
{
 struct ceph_vxattr *vxattr = ceph_inode_vxattrs(inode);

 if (vxattr) {
  while (vxattr->name) {
   if (!strcmp(vxattr->name, name))
    return vxattr;
   vxattr++;
  }
 }

 return ((void*)0);
}
