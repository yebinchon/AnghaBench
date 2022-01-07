
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_flags; int fl_blocker; int fl_wait; } ;
struct file {int dummy; } ;
struct cifsInodeInfo {int lock_sem; int can_cache_brlcks; } ;


 struct cifsInodeInfo* CIFS_I (int ) ;
 int FILE_LOCK_DEFERRED ;
 int FL_POSIX ;
 int cifs_down_write (int *) ;
 int file_inode (struct file*) ;
 int locks_delete_block (struct file_lock*) ;
 int posix_lock_file (struct file*,struct file_lock*,int *) ;
 int up_write (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int
cifs_posix_lock_set(struct file *file, struct file_lock *flock)
{
 struct cifsInodeInfo *cinode = CIFS_I(file_inode(file));
 int rc = 1;

 if ((flock->fl_flags & FL_POSIX) == 0)
  return rc;

try_again:
 cifs_down_write(&cinode->lock_sem);
 if (!cinode->can_cache_brlcks) {
  up_write(&cinode->lock_sem);
  return rc;
 }

 rc = posix_lock_file(file, flock, ((void*)0));
 up_write(&cinode->lock_sem);
 if (rc == FILE_LOCK_DEFERRED) {
  rc = wait_event_interruptible(flock->fl_wait, !flock->fl_blocker);
  if (!rc)
   goto try_again;
  locks_delete_block(flock);
 }
 return rc;
}
