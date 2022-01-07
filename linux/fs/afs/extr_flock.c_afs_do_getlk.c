
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct file_lock {int fl_type; scalar_t__ fl_pid; int fl_end; scalar_t__ fl_start; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int lock_count; } ;
struct afs_vnode {scalar_t__ lock_state; TYPE_1__ status; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 scalar_t__ AFS_VNODE_LOCK_DELETED ;
 int ENOENT ;
 int F_RDLCK ;
 int F_UNLCK ;
 int F_WRLCK ;
 int OFFSET_MAX ;
 int READ_ONCE (int ) ;
 int _enter (char*) ;
 int _leave (char*,int,int ) ;
 int afs_fetch_status (struct afs_vnode*,struct key*,int,int *) ;
 struct key* afs_file_key (struct file*) ;
 int locks_inode (struct file*) ;
 int posix_test_lock (struct file*,struct file_lock*) ;

__attribute__((used)) static int afs_do_getlk(struct file *file, struct file_lock *fl)
{
 struct afs_vnode *vnode = AFS_FS_I(locks_inode(file));
 struct key *key = afs_file_key(file);
 int ret, lock_count;

 _enter("");

 if (vnode->lock_state == AFS_VNODE_LOCK_DELETED)
  return -ENOENT;

 fl->fl_type = F_UNLCK;


 posix_test_lock(file, fl);
 if (fl->fl_type == F_UNLCK) {

  ret = afs_fetch_status(vnode, key, 0, ((void*)0));
  if (ret < 0)
   goto error;

  lock_count = READ_ONCE(vnode->status.lock_count);
  if (lock_count != 0) {
   if (lock_count > 0)
    fl->fl_type = F_RDLCK;
   else
    fl->fl_type = F_WRLCK;
   fl->fl_start = 0;
   fl->fl_end = OFFSET_MAX;
   fl->fl_pid = 0;
  }
 }

 ret = 0;
error:
 _leave(" = %d [%hd]", ret, fl->fl_type);
 return ret;
}
