
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid {int dummy; } ;
struct file {int dummy; } ;
struct autofs_sb_info {int flags; int pipefd; int wq_mutex; struct file* pipe; struct pid* oz_pgrp; } ;
struct TYPE_2__ {int pipefd; } ;
struct autofs_dev_ioctl {TYPE_1__ setpipefd; } ;


 int AUTOFS_SBI_CATATONIC ;
 int EBADF ;
 int EBUSY ;
 int EINVAL ;
 int EPIPE ;
 int PIDTYPE_PGID ;
 scalar_t__ autofs_prepare_pipe (struct file*) ;
 int current ;
 struct file* fget (int) ;
 int fput (struct file*) ;
 struct pid* get_task_pid (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ns_of_pid (struct pid*) ;
 int pr_warn (char*) ;
 int put_pid (struct pid*) ;
 int swap (struct pid*,struct pid*) ;

__attribute__((used)) static int autofs_dev_ioctl_setpipefd(struct file *fp,
          struct autofs_sb_info *sbi,
          struct autofs_dev_ioctl *param)
{
 int pipefd;
 int err = 0;
 struct pid *new_pid = ((void*)0);

 if (param->setpipefd.pipefd == -1)
  return -EINVAL;

 pipefd = param->setpipefd.pipefd;

 mutex_lock(&sbi->wq_mutex);
 if (!(sbi->flags & AUTOFS_SBI_CATATONIC)) {
  mutex_unlock(&sbi->wq_mutex);
  return -EBUSY;
 } else {
  struct file *pipe;

  new_pid = get_task_pid(current, PIDTYPE_PGID);

  if (ns_of_pid(new_pid) != ns_of_pid(sbi->oz_pgrp)) {
   pr_warn("not allowed to change PID namespace\n");
   err = -EINVAL;
   goto out;
  }

  pipe = fget(pipefd);
  if (!pipe) {
   err = -EBADF;
   goto out;
  }
  if (autofs_prepare_pipe(pipe) < 0) {
   err = -EPIPE;
   fput(pipe);
   goto out;
  }
  swap(sbi->oz_pgrp, new_pid);
  sbi->pipefd = pipefd;
  sbi->pipe = pipe;
  sbi->flags &= ~AUTOFS_SBI_CATATONIC;
 }
out:
 put_pid(new_pid);
 mutex_unlock(&sbi->wq_mutex);
 return err;
}
