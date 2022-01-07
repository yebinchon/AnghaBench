
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gsm_mux {int control_lock; int event; struct gsm_control* pending_cmd; int t2_timer; } ;
struct gsm_control {unsigned int cmd; int done; int error; } ;


 unsigned int CMD_NSC ;
 int EOPNOTSUPP ;
 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void gsm_control_response(struct gsm_mux *gsm, unsigned int command,
      const u8 *data, int clen)
{
 struct gsm_control *ctrl;
 unsigned long flags;

 spin_lock_irqsave(&gsm->control_lock, flags);

 ctrl = gsm->pending_cmd;

 command |= 1;
 if (ctrl != ((void*)0) && (command == ctrl->cmd || command == CMD_NSC)) {

  del_timer(&gsm->t2_timer);
  gsm->pending_cmd = ((void*)0);

  if (command == CMD_NSC)
   ctrl->error = -EOPNOTSUPP;
  ctrl->done = 1;
  wake_up(&gsm->event);
 }
 spin_unlock_irqrestore(&gsm->control_lock, flags);
}
