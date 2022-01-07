
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_inode_info {int i_ceph_lock; } ;


 int CEPH_CAP_XATTR_SHARED ;
 scalar_t__ __ceph_caps_issued_mask (struct ceph_inode_info*,int ,int ) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int forget_cached_acl (struct inode*,int) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ceph_set_cached_acl(struct inode *inode,
     int type, struct posix_acl *acl)
{
 struct ceph_inode_info *ci = ceph_inode(inode);

 spin_lock(&ci->i_ceph_lock);
 if (__ceph_caps_issued_mask(ci, CEPH_CAP_XATTR_SHARED, 0))
  set_cached_acl(inode, type, acl);
 else
  forget_cached_acl(inode, type);
 spin_unlock(&ci->i_ceph_lock);
}
