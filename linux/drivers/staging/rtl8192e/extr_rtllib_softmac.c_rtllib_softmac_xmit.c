
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtllib_txb {unsigned int queue_index; int nr_frags; TYPE_2__** fragments; } ;
struct TYPE_5__ {int multicast; } ;
struct rtllib_device {int lock; int rate; int dev; int (* softmac_data_hard_start_xmit ) (TYPE_2__*,int ,int ) ;int * skb_waitQ; scalar_t__ queue_stop; int (* check_nic_enough_desc ) (int ,unsigned int) ;TYPE_1__ stats; } ;
struct cb_desc {scalar_t__ bMulticast; } ;
struct TYPE_6__ {scalar_t__ cb; } ;


 scalar_t__ MAX_DEV_ADDR_SIZE ;
 int kfree_skb (TYPE_2__*) ;
 int rtllib_sta_wakeup (struct rtllib_device*,int ) ;
 int rtllib_txb_free (struct rtllib_txb*) ;
 unsigned long skb_queue_len (int *) ;
 int skb_queue_tail (int *,TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,unsigned int) ;
 int stub2 (TYPE_2__*,int ,int ) ;

void rtllib_softmac_xmit(struct rtllib_txb *txb, struct rtllib_device *ieee)
{

 unsigned int queue_index = txb->queue_index;
 unsigned long flags;
 int i;
 struct cb_desc *tcb_desc = ((void*)0);
 unsigned long queue_len = 0;

 spin_lock_irqsave(&ieee->lock, flags);


 rtllib_sta_wakeup(ieee, 0);


 tcb_desc = (struct cb_desc *)(txb->fragments[0]->cb +
     MAX_DEV_ADDR_SIZE);
 if (tcb_desc->bMulticast)
  ieee->stats.multicast++;




 for (i = 0; i < txb->nr_frags; i++) {
  queue_len = skb_queue_len(&ieee->skb_waitQ[queue_index]);
  if ((queue_len != 0) ||
      (!ieee->check_nic_enough_desc(ieee->dev, queue_index)) ||
      (ieee->queue_stop)) {




   if (queue_len < 200)
    skb_queue_tail(&ieee->skb_waitQ[queue_index],
            txb->fragments[i]);
   else
    kfree_skb(txb->fragments[i]);
  } else {
   ieee->softmac_data_hard_start_xmit(
     txb->fragments[i],
     ieee->dev, ieee->rate);
  }
 }

 rtllib_txb_free(txb);

 spin_unlock_irqrestore(&ieee->lock, flags);

}
