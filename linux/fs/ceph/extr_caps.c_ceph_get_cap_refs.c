
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_ceph_lock; } ;


 int __take_cap_refs (struct ceph_inode_info*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_get_cap_refs(struct ceph_inode_info *ci, int caps)
{
 spin_lock(&ci->i_ceph_lock);
 __take_cap_refs(ci, caps, 0);
 spin_unlock(&ci->i_ceph_lock);
}
