
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_inode_info {int i_fragtree_mutex; } ;
struct ceph_inode_frag {int dummy; } ;


 int __ceph_choose_frag (struct ceph_inode_info*,int ,struct ceph_inode_frag*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u32 ceph_choose_frag(struct ceph_inode_info *ci, u32 v,
       struct ceph_inode_frag *pfrag, int *found)
{
 u32 ret;
 mutex_lock(&ci->i_fragtree_mutex);
 ret = __ceph_choose_frag(ci, v, pfrag, found);
 mutex_unlock(&ci->i_fragtree_mutex);
 return ret;
}
