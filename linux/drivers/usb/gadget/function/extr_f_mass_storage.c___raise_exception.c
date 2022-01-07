
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int state; int lock; scalar_t__ thread_task; void* exception_arg; int ep0_req_tag; int exception_req_tag; } ;
typedef enum fsg_state { ____Placeholder_fsg_state } fsg_state ;


 int SEND_SIG_PRIV ;
 int SIGUSR1 ;
 int send_sig_info (int ,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __raise_exception(struct fsg_common *common, enum fsg_state new_state,
         void *arg)
{
 unsigned long flags;






 spin_lock_irqsave(&common->lock, flags);
 if (common->state <= new_state) {
  common->exception_req_tag = common->ep0_req_tag;
  common->state = new_state;
  common->exception_arg = arg;
  if (common->thread_task)
   send_sig_info(SIGUSR1, SEND_SIG_PRIV,
          common->thread_task);
 }
 spin_unlock_irqrestore(&common->lock, flags);
}
