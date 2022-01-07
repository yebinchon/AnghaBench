
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct most_interface {TYPE_1__* p; } ;
struct most_channel {int enqueue_halt; int hdm_fifo_wq; int nq_mutex; } ;
struct TYPE_2__ {struct most_channel** channel; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

void most_resume_enqueue(struct most_interface *iface, int id)
{
 struct most_channel *c = iface->p->channel[id];

 if (!c)
  return;

 mutex_lock(&c->nq_mutex);
 c->enqueue_halt = 0;
 mutex_unlock(&c->nq_mutex);

 wake_up_interruptible(&c->hdm_fifo_wq);
}
