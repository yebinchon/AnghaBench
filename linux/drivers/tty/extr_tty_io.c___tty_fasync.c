
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ctrl_lock; struct pid* pgrp; int fasync; } ;
struct pid {int dummy; } ;
struct file {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int PIDTYPE_PGID ;
 int PIDTYPE_TGID ;
 int __f_setown (struct file*,struct pid*,int,int ) ;
 int current ;
 int fasync_helper (int,struct file*,int,int *) ;
 int file_inode (struct file*) ;
 struct tty_struct* file_tty (struct file*) ;
 int get_pid (struct pid*) ;
 int put_pid (struct pid*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pid* task_pid (int ) ;
 scalar_t__ tty_paranoia_check (struct tty_struct*,int ,char*) ;

__attribute__((used)) static int __tty_fasync(int fd, struct file *filp, int on)
{
 struct tty_struct *tty = file_tty(filp);
 unsigned long flags;
 int retval = 0;

 if (tty_paranoia_check(tty, file_inode(filp), "tty_fasync"))
  goto out;

 retval = fasync_helper(fd, filp, on, &tty->fasync);
 if (retval <= 0)
  goto out;

 if (on) {
  enum pid_type type;
  struct pid *pid;

  spin_lock_irqsave(&tty->ctrl_lock, flags);
  if (tty->pgrp) {
   pid = tty->pgrp;
   type = PIDTYPE_PGID;
  } else {
   pid = task_pid(current);
   type = PIDTYPE_TGID;
  }
  get_pid(pid);
  spin_unlock_irqrestore(&tty->ctrl_lock, flags);
  __f_setown(filp, pid, type, 0);
  put_pid(pid);
  retval = 0;
 }
out:
 return retval;
}
