
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int waiting; int mutex; int waitqueue; int at_state; } ;


 int EV_STOP ;
 int cleanup_cs (struct cardstate*) ;
 int gigaset_add_event (struct cardstate*,int *,int ,int *,int ,int *) ;
 int gigaset_schedule_event (struct cardstate*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;

void gigaset_stop(struct cardstate *cs)
{
 mutex_lock(&cs->mutex);

 cs->waiting = 1;

 if (!gigaset_add_event(cs, &cs->at_state, EV_STOP, ((void*)0), 0, ((void*)0)))
  goto exit;
 gigaset_schedule_event(cs);

 wait_event(cs->waitqueue, !cs->waiting);

 cleanup_cs(cs);

exit:
 mutex_unlock(&cs->mutex);
}
