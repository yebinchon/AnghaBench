
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {int cs_init; int channels; int mutex; int bcs; int inbuf; int port; int at_state; TYPE_1__* ops; int timer; int event_tasklet; int lock; scalar_t__ running; } ;
struct TYPE_2__ {int (* freecshw ) (struct cardstate*) ;} ;


 int DEBUG_INIT ;
 int VALID_ID ;
 int clear_at_state (int *) ;
 int clear_events (struct cardstate*) ;
 int dealloc_temp_at_states (struct cardstate*) ;
 int del_timer_sync (int *) ;
 int free_cs (struct cardstate*) ;
 int gig_dbg (int ,char*,...) ;
 int gigaset_free_dev_sysfs (struct cardstate*) ;
 int gigaset_freebcs (int ) ;
 int gigaset_if_free (struct cardstate*) ;
 int gigaset_isdn_unregdev (struct cardstate*) ;
 int kfree (int ) ;
 int make_invalid (struct cardstate*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct cardstate*) ;
 int tasklet_kill (int *) ;
 int tty_port_destroy (int *) ;

void gigaset_freecs(struct cardstate *cs)
{
 int i;
 unsigned long flags;

 if (!cs)
  return;

 mutex_lock(&cs->mutex);

 spin_lock_irqsave(&cs->lock, flags);
 cs->running = 0;
 spin_unlock_irqrestore(&cs->lock, flags);


 tasklet_kill(&cs->event_tasklet);
 del_timer_sync(&cs->timer);

 switch (cs->cs_init) {
 default:

  for (i = 0; i < cs->channels; ++i) {
   gig_dbg(DEBUG_INIT, "clearing bcs[%d]", i);
   gigaset_freebcs(cs->bcs + i);
  }


  gigaset_free_dev_sysfs(cs);

  gigaset_if_free(cs);

  gig_dbg(DEBUG_INIT, "clearing hw");
  cs->ops->freecshw(cs);


 case 2:

  make_invalid(cs, VALID_ID);
  gigaset_isdn_unregdev(cs);


 case 1:
  gig_dbg(DEBUG_INIT, "clearing at_state");
  clear_at_state(&cs->at_state);
  dealloc_temp_at_states(cs);
  clear_events(cs);
  tty_port_destroy(&cs->port);


 case 0:
  gig_dbg(DEBUG_INIT, "freeing inbuf");
  kfree(cs->inbuf);
  kfree(cs->bcs);
 }

 mutex_unlock(&cs->mutex);
 free_cs(cs);
}
