
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {int connected; scalar_t__ mstate; int control_state; int waiting; int mutex; int waitqueue; int at_state; TYPE_1__* ops; int lock; } ;
struct TYPE_2__ {int (* set_line_ctrl ) (struct cardstate*,int ) ;int (* baud_rate ) (struct cardstate*,int ) ;int (* set_modem_ctrl ) (struct cardstate*,int ,int) ;} ;


 int B115200 ;
 int CS8 ;
 int EBUSY ;
 int ENOMEM ;
 int EV_START ;
 scalar_t__ MS_LOCKED ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int gigaset_add_event (struct cardstate*,int *,int ,int *,int ,int *) ;
 int gigaset_schedule_event (struct cardstate*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct cardstate*,int ,int) ;
 int stub2 (struct cardstate*,int ) ;
 int stub3 (struct cardstate*,int ) ;
 int wait_event (int ,int) ;

int gigaset_start(struct cardstate *cs)
{
 unsigned long flags;

 if (mutex_lock_interruptible(&cs->mutex))
  return -EBUSY;

 spin_lock_irqsave(&cs->lock, flags);
 cs->connected = 1;
 spin_unlock_irqrestore(&cs->lock, flags);

 if (cs->mstate != MS_LOCKED) {
  cs->ops->set_modem_ctrl(cs, 0, TIOCM_DTR | TIOCM_RTS);
  cs->ops->baud_rate(cs, B115200);
  cs->ops->set_line_ctrl(cs, CS8);
  cs->control_state = TIOCM_DTR | TIOCM_RTS;
 }

 cs->waiting = 1;

 if (!gigaset_add_event(cs, &cs->at_state, EV_START, ((void*)0), 0, ((void*)0))) {
  cs->waiting = 0;
  goto error;
 }
 gigaset_schedule_event(cs);

 wait_event(cs->waitqueue, !cs->waiting);

 mutex_unlock(&cs->mutex);
 return 0;

error:
 mutex_unlock(&cs->mutex);
 return -ENOMEM;
}
