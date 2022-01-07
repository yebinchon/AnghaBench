
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
struct queue_entry {int entry_idx; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;
 int Q_INDEX_DMA_DONE ;
 int TX_DTX_IDX (int) ;
 int WARN_ON_ONCE (int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 struct queue_entry* rt2x00queue_get_entry (struct data_queue*,int ) ;

unsigned int rt2800mmio_get_dma_done(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 struct queue_entry *entry;
 int idx, qid;

 switch (queue->qid) {
 case 130:
 case 131:
 case 133:
 case 132:
  qid = queue->qid;
  idx = rt2x00mmio_register_read(rt2x00dev, TX_DTX_IDX(qid));
  break;
 case 129:
  idx = rt2x00mmio_register_read(rt2x00dev, TX_DTX_IDX(5));
  break;
 case 128:
  entry = rt2x00queue_get_entry(queue, Q_INDEX_DMA_DONE);
  idx = entry->entry_idx;
  break;
 default:
  WARN_ON_ONCE(1);
  idx = 0;
  break;
 }

 return idx;
}
