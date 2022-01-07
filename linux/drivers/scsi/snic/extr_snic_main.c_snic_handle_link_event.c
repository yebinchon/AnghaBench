
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snic {int link_work; int snic_lock; scalar_t__ stop_link_events; } ;
struct TYPE_2__ {int event_q; } ;


 int queue_work (int ,int *) ;
 TYPE_1__* snic_glob ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
snic_handle_link_event(struct snic *snic)
{
 unsigned long flags;

 spin_lock_irqsave(&snic->snic_lock, flags);
 if (snic->stop_link_events) {
  spin_unlock_irqrestore(&snic->snic_lock, flags);

  return;
 }
 spin_unlock_irqrestore(&snic->snic_lock, flags);

 queue_work(snic_glob->event_q, &snic->link_work);
}
