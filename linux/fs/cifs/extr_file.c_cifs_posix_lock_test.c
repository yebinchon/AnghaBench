
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {unsigned char fl_type; int fl_flags; } ;
struct file {int dummy; } ;
struct cifsInodeInfo {int lock_sem; int can_cache_brlcks; } ;


 struct cifsInodeInfo* CIFS_I (int ) ;
 int FL_POSIX ;
 unsigned char F_UNLCK ;
 int down_read (int *) ;
 int file_inode (struct file*) ;
 int posix_test_lock (struct file*,struct file_lock*) ;
 int up_read (int *) ;

__attribute__((used)) static int
cifs_posix_lock_test(struct file *file, struct file_lock *flock)
{
 int rc = 0;
 struct cifsInodeInfo *cinode = CIFS_I(file_inode(file));
 unsigned char saved_type = flock->fl_type;

 if ((flock->fl_flags & FL_POSIX) == 0)
  return 1;

 down_read(&cinode->lock_sem);
 posix_test_lock(file, flock);

 if (flock->fl_type == F_UNLCK && !cinode->can_cache_brlcks) {
  flock->fl_type = saved_type;
  rc = 1;
 }

 up_read(&cinode->lock_sem);
 return rc;
}
