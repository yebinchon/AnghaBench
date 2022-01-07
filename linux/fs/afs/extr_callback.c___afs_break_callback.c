
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {scalar_t__ lock_state; int cb_break; int fid; int flags; } ;
typedef enum afs_cb_break_reason { ____Placeholder_afs_cb_break_reason } afs_cb_break_reason ;


 int AFS_VNODE_CB_PROMISED ;
 scalar_t__ AFS_VNODE_LOCK_WAITING_FOR_CB ;
 int AFS_VNODE_NEW_CONTENT ;
 int _enter (char*) ;
 int afs_clear_permits (struct afs_vnode*) ;
 int afs_lock_may_be_available (struct afs_vnode*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int trace_afs_cb_break (int *,int ,int,int) ;

void __afs_break_callback(struct afs_vnode *vnode, enum afs_cb_break_reason reason)
{
 _enter("");

 clear_bit(AFS_VNODE_NEW_CONTENT, &vnode->flags);
 if (test_and_clear_bit(AFS_VNODE_CB_PROMISED, &vnode->flags)) {
  vnode->cb_break++;
  afs_clear_permits(vnode);

  if (vnode->lock_state == AFS_VNODE_LOCK_WAITING_FOR_CB)
   afs_lock_may_be_available(vnode);

  trace_afs_cb_break(&vnode->fid, vnode->cb_break, reason, 1);
 } else {
  trace_afs_cb_break(&vnode->fid, vnode->cb_break, reason, 0);
 }
}
