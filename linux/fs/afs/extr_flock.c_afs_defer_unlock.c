
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {scalar_t__ lock_state; int lock_work; int granted_locks; } ;


 scalar_t__ AFS_VNODE_LOCK_EXTENDING ;
 scalar_t__ AFS_VNODE_LOCK_GRANTED ;
 int AFS_VNODE_LOCK_NEED_UNLOCK ;
 int _enter (char*,scalar_t__) ;
 int afs_flock_defer_unlock ;
 int afs_lock_manager ;
 int afs_set_lock_state (struct afs_vnode*,int ) ;
 int cancel_delayed_work (int *) ;
 scalar_t__ list_empty (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int trace_afs_flock_ev (struct afs_vnode*,int *,int ,int ) ;

__attribute__((used)) static void afs_defer_unlock(struct afs_vnode *vnode)
{
 _enter("%u", vnode->lock_state);

 if (list_empty(&vnode->granted_locks) &&
     (vnode->lock_state == AFS_VNODE_LOCK_GRANTED ||
      vnode->lock_state == AFS_VNODE_LOCK_EXTENDING)) {
  cancel_delayed_work(&vnode->lock_work);

  afs_set_lock_state(vnode, AFS_VNODE_LOCK_NEED_UNLOCK);
  trace_afs_flock_ev(vnode, ((void*)0), afs_flock_defer_unlock, 0);
  queue_delayed_work(afs_lock_manager, &vnode->lock_work, 0);
 }
}
