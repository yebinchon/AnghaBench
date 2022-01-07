
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ceph_inode_info {int i_cap_wq; int i_ceph_lock; int i_ceph_flags; scalar_t__ i_requested_max_size; scalar_t__ i_wanted_max_size; } ;
struct ceph_cap {scalar_t__ cap_gen; int mds_wanted; int implemented; int issued; TYPE_1__* session; } ;
struct TYPE_2__ {scalar_t__ s_cap_gen; } ;


 int CEPH_CAP_PIN ;
 int CEPH_I_CAP_DROPPED ;
 unsigned long FORCE_RO ;
 unsigned long RECONNECT ;
 unsigned long RENEWCAPS ;
 int __ceph_caps_file_wanted (struct ceph_inode_info*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int wake_up_session_cb(struct inode *inode, struct ceph_cap *cap,
         void *arg)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 unsigned long ev = (unsigned long)arg;

 if (ev == RECONNECT) {
  spin_lock(&ci->i_ceph_lock);
  ci->i_wanted_max_size = 0;
  ci->i_requested_max_size = 0;
  spin_unlock(&ci->i_ceph_lock);
 } else if (ev == RENEWCAPS) {
  if (cap->cap_gen < cap->session->s_cap_gen) {

   spin_lock(&ci->i_ceph_lock);
   cap->issued = cap->implemented = CEPH_CAP_PIN;

   if (__ceph_caps_file_wanted(ci) & ~cap->mds_wanted)
    ci->i_ceph_flags |= CEPH_I_CAP_DROPPED;
   spin_unlock(&ci->i_ceph_lock);
  }
 } else if (ev == FORCE_RO) {
 }
 wake_up_all(&ci->i_cap_wq);
 return 0;
}
