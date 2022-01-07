
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gsm_mux {int cretries; int n2; int t2; int control_lock; int t2_timer; TYPE_1__** dlci; struct gsm_control* pending_cmd; int event; } ;
struct gsm_control {unsigned int cmd; int len; int * data; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ DLCI_MODE_ADM ;
 int GFP_KERNEL ;
 int HZ ;
 int gsm_control_transmit (struct gsm_mux*,struct gsm_control*) ;
 scalar_t__ jiffies ;
 struct gsm_control* kzalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static struct gsm_control *gsm_control_send(struct gsm_mux *gsm,
  unsigned int command, u8 *data, int clen)
{
 struct gsm_control *ctrl = kzalloc(sizeof(struct gsm_control),
      GFP_KERNEL);
 unsigned long flags;
 if (ctrl == ((void*)0))
  return ((void*)0);
retry:
 wait_event(gsm->event, gsm->pending_cmd == ((void*)0));
 spin_lock_irqsave(&gsm->control_lock, flags);
 if (gsm->pending_cmd != ((void*)0)) {
  spin_unlock_irqrestore(&gsm->control_lock, flags);
  goto retry;
 }
 ctrl->cmd = command;
 ctrl->data = data;
 ctrl->len = clen;
 gsm->pending_cmd = ctrl;


 if (gsm->dlci[0]->mode == DLCI_MODE_ADM)
  gsm->cretries = 1;
 else
  gsm->cretries = gsm->n2;

 mod_timer(&gsm->t2_timer, jiffies + gsm->t2 * HZ / 100);
 gsm_control_transmit(gsm, ctrl);
 spin_unlock_irqrestore(&gsm->control_lock, flags);
 return ctrl;
}
