
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_queue {int qid; int rt2x00dev; } ;


 int rt2x00_warn (int ,char*,int ) ;
 int rt2x00queue_flush_queue (struct data_queue*,int) ;
 int rt2x00queue_start_queue (struct data_queue*) ;
 int rt2x00queue_stop_queue (struct data_queue*) ;

__attribute__((used)) static void rt2x00usb_watchdog_tx_dma(struct data_queue *queue)
{
 rt2x00_warn(queue->rt2x00dev, "TX queue %d DMA timed out, invoke forced forced reset\n",
      queue->qid);

 rt2x00queue_stop_queue(queue);
 rt2x00queue_flush_queue(queue, 1);
 rt2x00queue_start_queue(queue);
}
