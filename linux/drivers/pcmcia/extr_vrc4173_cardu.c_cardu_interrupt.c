
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int events; int tq_work; int event_lock; } ;
typedef TYPE_1__ vrc4173_socket_t ;
typedef int uint16_t ;


 int INIT_WORK (int *,int ,TYPE_1__*) ;
 int cardu_bh ;
 int get_events (TYPE_1__*) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cardu_interrupt(int irq, void *dev_id)
{
 vrc4173_socket_t *socket = (vrc4173_socket_t *)dev_id;
 uint16_t events;

 INIT_WORK(&socket->tq_work, cardu_bh, socket);

 events = get_events(socket);
 if (events) {
  spin_lock(&socket->event_lock);
  socket->events |= events;
  spin_unlock(&socket->event_lock);
  schedule_work(&socket->tq_work);
 }
}
