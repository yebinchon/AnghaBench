
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct afs_vnode {int flags; int cb_interest; TYPE_1__ cb_lock; int cb_expires_at; } ;
struct afs_callback {int expires_at; } ;
struct afs_status_cb {struct afs_callback callback; } ;
struct afs_fs_cursor {struct afs_cb_interest* cbi; } ;
struct afs_cb_interest {int dummy; } ;


 int AFS_VNODE_CB_PROMISED ;
 int afs_cb_is_broken (unsigned int,struct afs_vnode*,struct afs_cb_interest*) ;
 int afs_get_cb_interest (struct afs_cb_interest*) ;
 int afs_put_cb_interest (int ,struct afs_cb_interest*) ;
 int afs_v2net (struct afs_vnode*) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,int ) ;
 struct afs_cb_interest* rcu_dereference_protected (int ,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void afs_apply_callback(struct afs_fs_cursor *fc,
          struct afs_vnode *vnode,
          struct afs_status_cb *scb,
          unsigned int cb_break)
{
 struct afs_cb_interest *old;
 struct afs_callback *cb = &scb->callback;

 if (!afs_cb_is_broken(cb_break, vnode, fc->cbi)) {
  vnode->cb_expires_at = cb->expires_at;
  old = rcu_dereference_protected(vnode->cb_interest,
      lockdep_is_held(&vnode->cb_lock.lock));
  if (old != fc->cbi) {
   rcu_assign_pointer(vnode->cb_interest, afs_get_cb_interest(fc->cbi));
   afs_put_cb_interest(afs_v2net(vnode), old);
  }
  set_bit(AFS_VNODE_CB_PROMISED, &vnode->flags);
 }
}
