
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_queue {unsigned int wd_idx; int wd_count; } ;


 unsigned int rt2800_drv_get_dma_done (struct data_queue*) ;

__attribute__((used)) static int rt2800_check_hung(struct data_queue *queue)
{
 unsigned int cur_idx = rt2800_drv_get_dma_done(queue);

 if (queue->wd_idx != cur_idx)
  queue->wd_count = 0;
 else
  queue->wd_count++;

 return queue->wd_count > 16;
}
