
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int enabled; int port; struct per_user_data* user; } ;
struct per_user_data {scalar_t__ ring_prod; scalar_t__ ring_cons; scalar_t__ ring_size; int ring_overflow; int ring_prod_lock; int evtchn_async_queue; int evtchn_wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int POLL_IN ;
 int SIGIO ;
 int WARN (int,char*,int ,struct per_user_data*) ;
 int disable_irq_nosync (int) ;
 int * evtchn_ring_entry (struct per_user_data*,scalar_t__) ;
 int kill_fasync (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;
 int wmb () ;

__attribute__((used)) static irqreturn_t evtchn_interrupt(int irq, void *data)
{
 struct user_evtchn *evtchn = data;
 struct per_user_data *u = evtchn->user;

 WARN(!evtchn->enabled,
      "Interrupt for port %d, but apparently not enabled; per-user %p\n",
      evtchn->port, u);

 disable_irq_nosync(irq);
 evtchn->enabled = 0;

 spin_lock(&u->ring_prod_lock);

 if ((u->ring_prod - u->ring_cons) < u->ring_size) {
  *evtchn_ring_entry(u, u->ring_prod) = evtchn->port;
  wmb();
  if (u->ring_cons == u->ring_prod++) {
   wake_up_interruptible(&u->evtchn_wait);
   kill_fasync(&u->evtchn_async_queue,
        SIGIO, POLL_IN);
  }
 } else
  u->ring_overflow = 1;

 spin_unlock(&u->ring_prod_lock);

 return IRQ_HANDLED;
}
