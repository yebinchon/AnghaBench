
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int txstatus_timer; } ;
struct queue_entry {int entry_idx; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;


 int HRTIMER_MODE_REL ;





 int Q_INDEX ;
 int TXSTATUS_TIMEOUT ;
 int TX_CTX_IDX (int) ;
 int WARN_ON_ONCE (int ) ;
 int hrtimer_start (int *,int ,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00queue_empty (struct data_queue*) ;
 struct queue_entry* rt2x00queue_get_entry (struct data_queue*,int ) ;

void rt2800mmio_kick_queue(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 struct queue_entry *entry;

 switch (queue->qid) {
 case 129:
 case 130:
 case 132:
 case 131:
  WARN_ON_ONCE(rt2x00queue_empty(queue));
  entry = rt2x00queue_get_entry(queue, Q_INDEX);
  rt2x00mmio_register_write(rt2x00dev, TX_CTX_IDX(queue->qid),
       entry->entry_idx);
  hrtimer_start(&rt2x00dev->txstatus_timer,
         TXSTATUS_TIMEOUT, HRTIMER_MODE_REL);
  break;
 case 128:
  entry = rt2x00queue_get_entry(queue, Q_INDEX);
  rt2x00mmio_register_write(rt2x00dev, TX_CTX_IDX(5),
       entry->entry_idx);
  break;
 default:
  break;
 }
}
