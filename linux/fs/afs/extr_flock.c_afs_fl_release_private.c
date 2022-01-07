
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link; } ;
struct TYPE_4__ {TYPE_1__ afs; } ;
struct file_lock {TYPE_2__ fl_u; int fl_file; } ;
struct afs_vnode {int lock; int lock_state; int granted_locks; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 int _debug (char*,int ,struct afs_vnode*) ;
 int _enter (char*) ;
 int afs_defer_unlock (struct afs_vnode*) ;
 int afs_flock_op_release_lock ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int locks_inode (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_afs_flock_op (struct afs_vnode*,struct file_lock*,int ) ;

__attribute__((used)) static void afs_fl_release_private(struct file_lock *fl)
{
 struct afs_vnode *vnode = AFS_FS_I(locks_inode(fl->fl_file));

 _enter("");

 spin_lock(&vnode->lock);

 trace_afs_flock_op(vnode, fl, afs_flock_op_release_lock);
 list_del_init(&fl->fl_u.afs.link);
 if (list_empty(&vnode->granted_locks))
  afs_defer_unlock(vnode);

 _debug("state %u for %p", vnode->lock_state, vnode);
 spin_unlock(&vnode->lock);
}
