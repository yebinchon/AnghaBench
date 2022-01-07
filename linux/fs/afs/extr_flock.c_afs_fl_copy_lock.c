
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link; int debug_id; } ;
struct TYPE_4__ {TYPE_1__ afs; } ;
struct file_lock {TYPE_2__ fl_u; int fl_file; } ;
struct afs_vnode {int lock; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 int _enter (char*) ;
 int afs_file_lock_debug_id ;
 int afs_flock_op_copy_lock ;
 int atomic_inc_return (int *) ;
 int list_add (int *,int *) ;
 int locks_inode (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_afs_flock_op (struct afs_vnode*,struct file_lock*,int ) ;

__attribute__((used)) static void afs_fl_copy_lock(struct file_lock *new, struct file_lock *fl)
{
 struct afs_vnode *vnode = AFS_FS_I(locks_inode(fl->fl_file));

 _enter("");

 new->fl_u.afs.debug_id = atomic_inc_return(&afs_file_lock_debug_id);

 spin_lock(&vnode->lock);
 trace_afs_flock_op(vnode, new, afs_flock_op_copy_lock);
 list_add(&new->fl_u.afs.link, &fl->fl_u.afs.link);
 spin_unlock(&vnode->lock);
}
