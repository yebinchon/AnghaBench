
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {int lock; int locked_at; } ;
struct afs_call {scalar_t__ error; int reply_time; struct afs_vnode* lvnode; } ;


 int afs_flock_timestamp ;
 int afs_schedule_lock_extension (struct afs_vnode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_afs_flock_ev (struct afs_vnode*,int *,int ,int ) ;

void afs_lock_op_done(struct afs_call *call)
{
 struct afs_vnode *vnode = call->lvnode;

 if (call->error == 0) {
  spin_lock(&vnode->lock);
  trace_afs_flock_ev(vnode, ((void*)0), afs_flock_timestamp, 0);
  vnode->locked_at = call->reply_time;
  afs_schedule_lock_extension(vnode);
  spin_unlock(&vnode->lock);
 }
}
