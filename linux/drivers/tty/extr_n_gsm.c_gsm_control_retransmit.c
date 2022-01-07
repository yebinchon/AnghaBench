
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct gsm_mux {scalar_t__ cretries; int t2; int control_lock; int t2_timer; int event; struct gsm_control* pending_cmd; } ;
struct gsm_control {int done; int error; } ;


 int ETIMEDOUT ;
 int HZ ;
 struct gsm_mux* from_timer (int ,struct timer_list*,int ) ;
 struct gsm_mux* gsm ;
 int gsm_control_transmit (struct gsm_mux*,struct gsm_control*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int t2_timer ;
 int wake_up (int *) ;

__attribute__((used)) static void gsm_control_retransmit(struct timer_list *t)
{
 struct gsm_mux *gsm = from_timer(gsm, t, t2_timer);
 struct gsm_control *ctrl;
 unsigned long flags;
 spin_lock_irqsave(&gsm->control_lock, flags);
 ctrl = gsm->pending_cmd;
 if (ctrl) {
  gsm->cretries--;
  if (gsm->cretries == 0) {
   gsm->pending_cmd = ((void*)0);
   ctrl->error = -ETIMEDOUT;
   ctrl->done = 1;
   spin_unlock_irqrestore(&gsm->control_lock, flags);
   wake_up(&gsm->event);
   return;
  }
  gsm_control_transmit(gsm, ctrl);
  mod_timer(&gsm->t2_timer, jiffies + gsm->t2 * HZ / 100);
 }
 spin_unlock_irqrestore(&gsm->control_lock, flags);
}
