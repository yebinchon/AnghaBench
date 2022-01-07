
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_queue {int qid; } ;







 int Q_INDEX ;
 int Q_INDEX_DONE ;
 int rt2x00queue_empty (struct data_queue*) ;
 int rt2x00queue_for_each_entry (struct data_queue*,int ,int ,int *,int ) ;
 int rt2x00queue_full (struct data_queue*) ;
 int rt2x00usb_kick_rx_entry ;
 int rt2x00usb_kick_tx_entry ;

void rt2x00usb_kick_queue(struct data_queue *queue)
{
 switch (queue->qid) {
 case 129:
 case 130:
 case 132:
 case 131:
  if (!rt2x00queue_empty(queue))
   rt2x00queue_for_each_entry(queue,
         Q_INDEX_DONE,
         Q_INDEX,
         ((void*)0),
         rt2x00usb_kick_tx_entry);
  break;
 case 128:
  if (!rt2x00queue_full(queue))
   rt2x00queue_for_each_entry(queue,
         Q_INDEX,
         Q_INDEX_DONE,
         ((void*)0),
         rt2x00usb_kick_rx_entry);
  break;
 default:
  break;
 }
}
