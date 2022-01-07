
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_fs_cursor {int flags; int error; } ;


 int AFS_FS_CURSOR_INTR ;
 int ERESTARTSYS ;
 int current ;
 int msleep (int) ;
 int msleep_interruptible (int) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static bool afs_sleep_and_retry(struct afs_fs_cursor *fc)
{
 if (fc->flags & AFS_FS_CURSOR_INTR) {
  msleep_interruptible(1000);
  if (signal_pending(current)) {
   fc->error = -ERESTARTSYS;
   return 0;
  }
 } else {
  msleep(1000);
 }

 return 1;
}
