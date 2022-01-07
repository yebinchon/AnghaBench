
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {scalar_t__ resp_active; void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;int resp_wq; int ex_lock; int * resp_task; void* arg; } ;


 int * current ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static bool fc_invoke_resp(struct fc_exch *ep, struct fc_seq *sp,
      struct fc_frame *fp)
{
 void (*resp)(struct fc_seq *, struct fc_frame *fp, void *arg);
 void *arg;
 bool res = 0;

 spin_lock_bh(&ep->ex_lock);
 ep->resp_active++;
 if (ep->resp_task != current)
  ep->resp_task = !ep->resp_task ? current : ((void*)0);
 resp = ep->resp;
 arg = ep->arg;
 spin_unlock_bh(&ep->ex_lock);

 if (resp) {
  resp(sp, fp, arg);
  res = 1;
 }

 spin_lock_bh(&ep->ex_lock);
 if (--ep->resp_active == 0)
  ep->resp_task = ((void*)0);
 spin_unlock_bh(&ep->ex_lock);

 if (ep->resp_active == 0)
  wake_up(&ep->resp_wq);

 return res;
}
