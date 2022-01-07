
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {int cb_lock; } ;
typedef enum afs_cb_break_reason { ____Placeholder_afs_cb_break_reason } afs_cb_break_reason ;


 int __afs_break_callback (struct afs_vnode*,int) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

void afs_break_callback(struct afs_vnode *vnode, enum afs_cb_break_reason reason)
{
 write_seqlock(&vnode->cb_lock);
 __afs_break_callback(vnode, reason);
 write_sequnlock(&vnode->cb_lock);
}
