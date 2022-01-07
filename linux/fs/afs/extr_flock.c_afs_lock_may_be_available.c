
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {scalar_t__ lock_state; int lock; TYPE_1__ fid; } ;


 scalar_t__ AFS_VNODE_LOCK_WAITING_FOR_CB ;
 int _enter (char*,int ,int ) ;
 int afs_flock_callback_break ;
 int afs_next_locker (struct afs_vnode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_afs_flock_ev (struct afs_vnode*,int *,int ,int ) ;

void afs_lock_may_be_available(struct afs_vnode *vnode)
{
 _enter("{%llx:%llu}", vnode->fid.vid, vnode->fid.vnode);

 spin_lock(&vnode->lock);
 if (vnode->lock_state == AFS_VNODE_LOCK_WAITING_FOR_CB)
  afs_next_locker(vnode, 0);
 trace_afs_flock_ev(vnode, ((void*)0), afs_flock_callback_break, 0);
 spin_unlock(&vnode->lock);
}
