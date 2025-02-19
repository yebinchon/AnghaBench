
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int ex; int rv; void* owner; int end; int start; scalar_t__ number; int fsid; int wait; scalar_t__ pid; int optype; } ;
struct plock_op {scalar_t__ done; TYPE_2__ info; int list; } ;
struct plock_xop {int * callback; struct file* file; struct file_lock* fl; int flc; struct plock_op xop; } ;
struct file_lock {scalar_t__ fl_type; scalar_t__ fl_owner; TYPE_1__* fl_lmops; scalar_t__ fl_pid; int fl_end; int fl_start; } ;
struct file {int dummy; } ;
struct dlm_ls {int ls_global_id; } ;
typedef int dlm_lockspace_t ;
typedef void* __u64 ;
struct TYPE_3__ {int * lm_grant; } ;


 int DLM_PLOCK_OP_LOCK ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int FILE_LOCK_DEFERRED ;
 scalar_t__ F_WRLCK ;
 int GFP_NOFS ;
 int IS_SETLKW (int) ;
 struct dlm_ls* dlm_find_lockspace_local (int *) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int do_unlock_close (struct dlm_ls*,scalar_t__,struct file*,struct file_lock*) ;
 int kfree (struct plock_xop*) ;
 struct plock_xop* kzalloc (int,int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int locks_copy_lock (int *,struct file_lock*) ;
 int locks_init_lock (int *) ;
 scalar_t__ locks_lock_file_wait (struct file*,struct file_lock*) ;
 int log_debug (struct dlm_ls*,char*,unsigned long long) ;
 int log_error (struct dlm_ls*,char*,unsigned long long) ;
 int ops_lock ;
 int recv_wq ;
 int send_op (struct plock_op*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

int dlm_posix_lock(dlm_lockspace_t *lockspace, u64 number, struct file *file,
     int cmd, struct file_lock *fl)
{
 struct dlm_ls *ls;
 struct plock_op *op;
 struct plock_xop *xop;
 int rv;

 ls = dlm_find_lockspace_local(lockspace);
 if (!ls)
  return -EINVAL;

 xop = kzalloc(sizeof(*xop), GFP_NOFS);
 if (!xop) {
  rv = -ENOMEM;
  goto out;
 }

 op = &xop->xop;
 op->info.optype = DLM_PLOCK_OP_LOCK;
 op->info.pid = fl->fl_pid;
 op->info.ex = (fl->fl_type == F_WRLCK);
 op->info.wait = IS_SETLKW(cmd);
 op->info.fsid = ls->ls_global_id;
 op->info.number = number;
 op->info.start = fl->fl_start;
 op->info.end = fl->fl_end;
 if (fl->fl_lmops && fl->fl_lmops->lm_grant) {


  op->info.owner = (__u64) fl->fl_pid;
  xop->callback = fl->fl_lmops->lm_grant;
  locks_init_lock(&xop->flc);
  locks_copy_lock(&xop->flc, fl);
  xop->fl = fl;
  xop->file = file;
 } else {
  op->info.owner = (__u64)(long) fl->fl_owner;
  xop->callback = ((void*)0);
 }

 send_op(op);

 if (xop->callback == ((void*)0)) {
  rv = wait_event_interruptible(recv_wq, (op->done != 0));
  if (rv == -ERESTARTSYS) {
   log_debug(ls, "dlm_posix_lock: wait killed %llx",
      (unsigned long long)number);
   spin_lock(&ops_lock);
   list_del(&op->list);
   spin_unlock(&ops_lock);
   kfree(xop);
   do_unlock_close(ls, number, file, fl);
   goto out;
  }
 } else {
  rv = FILE_LOCK_DEFERRED;
  goto out;
 }

 spin_lock(&ops_lock);
 if (!list_empty(&op->list)) {
  log_error(ls, "dlm_posix_lock: op on list %llx",
     (unsigned long long)number);
  list_del(&op->list);
 }
 spin_unlock(&ops_lock);

 rv = op->info.rv;

 if (!rv) {
  if (locks_lock_file_wait(file, fl) < 0)
   log_error(ls, "dlm_posix_lock: vfs lock error %llx",
      (unsigned long long)number);
 }

 kfree(xop);
out:
 dlm_put_lockspace(ls);
 return rv;
}
