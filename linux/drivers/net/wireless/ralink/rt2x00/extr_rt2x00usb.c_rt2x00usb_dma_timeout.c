
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {int dummy; } ;
struct data_queue {int dummy; } ;


 int Q_INDEX_DMA_DONE ;
 int rt2x00queue_dma_timeout (struct queue_entry*) ;
 struct queue_entry* rt2x00queue_get_entry (struct data_queue*,int ) ;

__attribute__((used)) static int rt2x00usb_dma_timeout(struct data_queue *queue)
{
 struct queue_entry *entry;

 entry = rt2x00queue_get_entry(queue, Q_INDEX_DMA_DONE);
 return rt2x00queue_dma_timeout(entry);
}
