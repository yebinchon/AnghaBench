
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_exch {scalar_t__ resp_task; void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;int ex_lock; void* arg; int resp_wq; scalar_t__ resp_active; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ current ;
 struct fc_exch* fc_seq_exch (struct fc_seq*) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait ;

void fc_seq_set_resp(struct fc_seq *sp,
       void (*resp)(struct fc_seq *, struct fc_frame *, void *),
       void *arg)
{
 struct fc_exch *ep = fc_seq_exch(sp);
 DEFINE_WAIT(wait);

 spin_lock_bh(&ep->ex_lock);
 while (ep->resp_active && ep->resp_task != current) {
  prepare_to_wait(&ep->resp_wq, &wait, TASK_UNINTERRUPTIBLE);
  spin_unlock_bh(&ep->ex_lock);

  schedule();

  spin_lock_bh(&ep->ex_lock);
 }
 finish_wait(&ep->resp_wq, &wait);
 ep->resp = resp;
 ep->arg = arg;
 spin_unlock_bh(&ep->ex_lock);
}
