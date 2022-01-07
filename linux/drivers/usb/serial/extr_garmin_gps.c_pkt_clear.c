
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct garmin_packet {int list; } ;
struct TYPE_2__ {scalar_t__ next; } ;
struct garmin_data {int lock; TYPE_1__ pktlist; } ;


 int kfree (struct garmin_packet*) ;
 int list_del (int *) ;
 int list_empty (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pkt_clear(struct garmin_data *garmin_data_p)
{
 unsigned long flags;
 struct garmin_packet *result = ((void*)0);

 spin_lock_irqsave(&garmin_data_p->lock, flags);
 while (!list_empty(&garmin_data_p->pktlist)) {
  result = (struct garmin_packet *)garmin_data_p->pktlist.next;
  list_del(&result->list);
  kfree(result);
 }
 spin_unlock_irqrestore(&garmin_data_p->lock, flags);
}
