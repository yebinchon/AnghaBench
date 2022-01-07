
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int txdone_work; int workqueue; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;







 int msleep (int) ;
 int queue_work (int ,int *) ;
 scalar_t__ rt2x00queue_empty (struct data_queue*) ;

void rt2800mmio_flush_queue(struct data_queue *queue, bool drop)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 bool tx_queue = 0;
 unsigned int i;

 switch (queue->qid) {
 case 129:
 case 130:
 case 132:
 case 131:
  tx_queue = 1;
  break;
 case 128:
  break;
 default:
  return;
 }

 for (i = 0; i < 5; i++) {





  if (rt2x00queue_empty(queue))
   break;





  if (tx_queue)
   queue_work(rt2x00dev->workqueue, &rt2x00dev->txdone_work);





  msleep(50);
 }
}
