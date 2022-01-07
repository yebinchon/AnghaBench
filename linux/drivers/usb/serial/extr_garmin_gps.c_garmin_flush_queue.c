
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct garmin_packet {int size; int data; } ;
struct garmin_data {int flags; int lock; int timer; int port; } ;


 int FLAGS_QUEUING ;
 int FLAGS_THROTTLED ;
 scalar_t__ jiffies ;
 int kfree (struct garmin_packet*) ;
 int mod_timer (int *,scalar_t__) ;
 struct garmin_packet* pkt_pop (struct garmin_data*) ;
 int send_to_tty (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int garmin_flush_queue(struct garmin_data *garmin_data_p)
{
 unsigned long flags;
 struct garmin_packet *pkt;

 if ((garmin_data_p->flags & FLAGS_THROTTLED) == 0) {
  pkt = pkt_pop(garmin_data_p);
  if (pkt != ((void*)0)) {
   send_to_tty(garmin_data_p->port, pkt->data, pkt->size);
   kfree(pkt);
   mod_timer(&garmin_data_p->timer, (1)+jiffies);

  } else {
   spin_lock_irqsave(&garmin_data_p->lock, flags);
   garmin_data_p->flags &= ~FLAGS_QUEUING;
   spin_unlock_irqrestore(&garmin_data_p->lock, flags);
  }
 }
 return 0;
}
