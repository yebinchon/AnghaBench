
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int link_work; int fnic_lock; scalar_t__ stop_rx_link_events; } ;


 int fnic_event_queue ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void fnic_handle_link_event(struct fnic *fnic)
{
 unsigned long flags;

 spin_lock_irqsave(&fnic->fnic_lock, flags);
 if (fnic->stop_rx_link_events) {
  spin_unlock_irqrestore(&fnic->fnic_lock, flags);
  return;
 }
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 queue_work(fnic_event_queue, &fnic->link_work);

}
