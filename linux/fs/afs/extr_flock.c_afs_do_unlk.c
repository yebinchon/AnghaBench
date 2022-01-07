
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int fl_type; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {int lock_state; TYPE_1__ fid; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 int _enter (char*,int ,int ,int ) ;
 int _leave (char*,int,int ) ;
 int afs_flock_op_unlock ;
 int locks_inode (struct file*) ;
 int locks_lock_file_wait (struct file*,struct file_lock*) ;
 int trace_afs_flock_op (struct afs_vnode*,struct file_lock*,int ) ;
 int vfs_fsync (struct file*,int ) ;

__attribute__((used)) static int afs_do_unlk(struct file *file, struct file_lock *fl)
{
 struct afs_vnode *vnode = AFS_FS_I(locks_inode(file));
 int ret;

 _enter("{%llx:%llu},%u", vnode->fid.vid, vnode->fid.vnode, fl->fl_type);

 trace_afs_flock_op(vnode, fl, afs_flock_op_unlock);


 vfs_fsync(file, 0);

 ret = locks_lock_file_wait(file, fl);
 _leave(" = %d [%u]", ret, vnode->lock_state);
 return ret;
}
