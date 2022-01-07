
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct afs_vnode {scalar_t__ lock_state; int io_lock; } ;
struct TYPE_2__ {int error; } ;
struct afs_fs_cursor {int flags; int error; TYPE_1__ ac; struct key* key; struct afs_vnode* vnode; } ;


 int AFS_FS_CURSOR_CUR_ONLY ;
 int AFS_FS_CURSOR_INTR ;
 int AFS_FS_CURSOR_STOP ;
 scalar_t__ AFS_VNODE_LOCK_NONE ;
 int EDESTADDRREQ ;
 int EINTR ;
 int SHRT_MAX ;
 int memset (struct afs_fs_cursor*,int ,int) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;

bool afs_begin_vnode_operation(struct afs_fs_cursor *fc, struct afs_vnode *vnode,
          struct key *key, bool intr)
{
 memset(fc, 0, sizeof(*fc));
 fc->vnode = vnode;
 fc->key = key;
 fc->ac.error = SHRT_MAX;
 fc->error = -EDESTADDRREQ;

 if (intr) {
  fc->flags |= AFS_FS_CURSOR_INTR;
  if (mutex_lock_interruptible(&vnode->io_lock) < 0) {
   fc->error = -EINTR;
   fc->flags |= AFS_FS_CURSOR_STOP;
   return 0;
  }
 } else {
  mutex_lock(&vnode->io_lock);
 }

 if (vnode->lock_state != AFS_VNODE_LOCK_NONE)
  fc->flags |= AFS_FS_CURSOR_CUR_ONLY;
 return 1;
}
