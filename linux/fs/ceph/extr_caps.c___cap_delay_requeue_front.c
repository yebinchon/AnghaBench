
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int cap_delay_lock; int cap_delay_list; } ;
struct ceph_inode_info {int i_cap_delay_list; int i_ceph_flags; int vfs_inode; } ;


 int CEPH_I_FLUSH ;
 int dout (char*,int *) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __cap_delay_requeue_front(struct ceph_mds_client *mdsc,
          struct ceph_inode_info *ci)
{
 dout("__cap_delay_requeue_front %p\n", &ci->vfs_inode);
 spin_lock(&mdsc->cap_delay_lock);
 ci->i_ceph_flags |= CEPH_I_FLUSH;
 if (!list_empty(&ci->i_cap_delay_list))
  list_del_init(&ci->i_cap_delay_list);
 list_add(&ci->i_cap_delay_list, &mdsc->cap_delay_list);
 spin_unlock(&mdsc->cap_delay_lock);
}
