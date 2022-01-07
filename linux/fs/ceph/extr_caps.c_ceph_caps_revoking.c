
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_inode_info {int i_ceph_lock; struct inode vfs_inode; } ;


 int __ceph_caps_revoking_other (struct ceph_inode_info*,int *,int) ;
 int ceph_cap_string (int) ;
 int dout (char*,struct inode*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ceph_caps_revoking(struct ceph_inode_info *ci, int mask)
{
 struct inode *inode = &ci->vfs_inode;
 int ret;

 spin_lock(&ci->i_ceph_lock);
 ret = __ceph_caps_revoking_other(ci, ((void*)0), mask);
 spin_unlock(&ci->i_ceph_lock);
 dout("ceph_caps_revoking %p %s = %d\n", inode,
      ceph_cap_string(mask), ret);
 return ret;
}
