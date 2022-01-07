
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_ceph_lock; } ;
struct ceph_cap {int dummy; } ;


 struct ceph_cap* __get_cap_for_mds (struct ceph_inode_info*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct ceph_cap *ceph_get_cap_for_mds(struct ceph_inode_info *ci, int mds)
{
 struct ceph_cap *cap;

 spin_lock(&ci->i_ceph_lock);
 cap = __get_cap_for_mds(ci, mds);
 spin_unlock(&ci->i_ceph_lock);
 return cap;
}
