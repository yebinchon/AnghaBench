
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int cap_delay_lock; int cap_delay_list; int stopping; } ;
struct ceph_inode_info {int i_ceph_flags; int i_cap_delay_list; int i_hold_caps_max; int vfs_inode; } ;


 int CEPH_I_FLUSH ;
 int __cap_set_timeouts (struct ceph_mds_client*,struct ceph_inode_info*) ;
 int dout (char*,int *,int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __cap_delay_requeue(struct ceph_mds_client *mdsc,
    struct ceph_inode_info *ci,
    bool set_timeout)
{
 dout("__cap_delay_requeue %p flags %d at %lu\n", &ci->vfs_inode,
      ci->i_ceph_flags, ci->i_hold_caps_max);
 if (!mdsc->stopping) {
  spin_lock(&mdsc->cap_delay_lock);
  if (!list_empty(&ci->i_cap_delay_list)) {
   if (ci->i_ceph_flags & CEPH_I_FLUSH)
    goto no_change;
   list_del_init(&ci->i_cap_delay_list);
  }
  if (set_timeout)
   __cap_set_timeouts(mdsc, ci);
  list_add_tail(&ci->i_cap_delay_list, &mdsc->cap_delay_list);
no_change:
  spin_unlock(&mdsc->cap_delay_lock);
 }
}
