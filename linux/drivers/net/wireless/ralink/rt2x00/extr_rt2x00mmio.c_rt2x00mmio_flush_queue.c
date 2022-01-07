
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_queue {int dummy; } ;


 int msleep (int) ;
 int rt2x00queue_empty (struct data_queue*) ;

void rt2x00mmio_flush_queue(struct data_queue *queue, bool drop)
{
 unsigned int i;

 for (i = 0; !rt2x00queue_empty(queue) && i < 10; i++)
  msleep(50);
}
