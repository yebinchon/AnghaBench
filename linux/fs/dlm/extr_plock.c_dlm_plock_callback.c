
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int fl_flags; } ;
struct plock_xop {int (* callback ) (struct file_lock*,int) ;struct file_lock* fl; struct file_lock flc; struct file* file; } ;
struct TYPE_2__ {int rv; scalar_t__ number; } ;
struct plock_op {TYPE_1__ info; int list; } ;
struct file {int dummy; } ;


 int FL_SLEEP ;
 int kfree (struct plock_xop*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int log_print (char*,...) ;
 int ops_lock ;
 scalar_t__ posix_lock_file (struct file*,struct file_lock*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_plock_callback(struct plock_op *op)
{
 struct file *file;
 struct file_lock *fl;
 struct file_lock *flc;
 int (*notify)(struct file_lock *fl, int result) = ((void*)0);
 struct plock_xop *xop = (struct plock_xop *)op;
 int rv = 0;

 spin_lock(&ops_lock);
 if (!list_empty(&op->list)) {
  log_print("dlm_plock_callback: op on list %llx",
     (unsigned long long)op->info.number);
  list_del(&op->list);
 }
 spin_unlock(&ops_lock);


 file = xop->file;
 flc = &xop->flc;
 fl = xop->fl;
 notify = xop->callback;

 if (op->info.rv) {
  notify(fl, op->info.rv);
  goto out;
 }


 flc->fl_flags &= ~FL_SLEEP;
 if (posix_lock_file(file, flc, ((void*)0))) {
  log_print("dlm_plock_callback: vfs lock error %llx file %p fl %p",
     (unsigned long long)op->info.number, file, fl);
 }

 rv = notify(fl, 0);
 if (rv) {

  log_print("dlm_plock_callback: lock granted after lock request "
     "failed; dangling lock!\n");
  goto out;
 }

out:
 kfree(xop);
 return rv;
}
