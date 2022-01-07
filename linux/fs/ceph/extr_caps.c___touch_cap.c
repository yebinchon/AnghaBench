
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mds_session {int s_cap_lock; int s_mds; int s_caps; int s_cap_iterator; } ;
struct ceph_cap {TYPE_1__* ci; int session_caps; struct ceph_mds_session* session; } ;
struct TYPE_2__ {int vfs_inode; } ;


 int dout (char*,int *,struct ceph_cap*,int ) ;
 int list_move_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __touch_cap(struct ceph_cap *cap)
{
 struct ceph_mds_session *s = cap->session;

 spin_lock(&s->s_cap_lock);
 if (!s->s_cap_iterator) {
  dout("__touch_cap %p cap %p mds%d\n", &cap->ci->vfs_inode, cap,
       s->s_mds);
  list_move_tail(&cap->session_caps, &s->s_caps);
 } else {
  dout("__touch_cap %p cap %p mds%d NOP, iterating over caps\n",
       &cap->ci->vfs_inode, cap, s->s_mds);
 }
 spin_unlock(&s->s_cap_lock);
}
