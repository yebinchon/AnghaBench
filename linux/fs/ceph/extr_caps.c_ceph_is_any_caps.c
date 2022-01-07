
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_inode_info {int i_ceph_lock; } ;


 int __ceph_is_any_caps (struct ceph_inode_info*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ceph_is_any_caps(struct inode *inode)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 int ret;

 spin_lock(&ci->i_ceph_lock);
 ret = __ceph_is_any_caps(ci);
 spin_unlock(&ci->i_ceph_lock);

 return ret;
}
