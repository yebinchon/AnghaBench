
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * txb; } ;
struct rtllib_device {int lock; scalar_t__ queue_stop; TYPE_1__ tx_pending; } ;


 int init_mgmt_queue (struct rtllib_device*) ;
 int rtllib_txb_free (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rtllib_reset_queue(struct rtllib_device *ieee)
{
 unsigned long flags;

 spin_lock_irqsave(&ieee->lock, flags);
 init_mgmt_queue(ieee);
 if (ieee->tx_pending.txb) {
  rtllib_txb_free(ieee->tx_pending.txb);
  ieee->tx_pending.txb = ((void*)0);
 }
 ieee->queue_stop = 0;
 spin_unlock_irqrestore(&ieee->lock, flags);

}
