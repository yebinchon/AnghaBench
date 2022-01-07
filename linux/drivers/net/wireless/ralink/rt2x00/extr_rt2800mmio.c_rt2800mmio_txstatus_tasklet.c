
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int txstatus_tasklet; int txstatus_fifo; } ;


 int kfifo_is_empty (int *) ;
 int rt2800_txdone (struct rt2x00_dev*,int) ;
 int tasklet_schedule (int *) ;

void rt2800mmio_txstatus_tasklet(unsigned long data)
{
 struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;

 rt2800_txdone(rt2x00dev, 16);

 if (!kfifo_is_empty(&rt2x00dev->txstatus_fifo))
  tasklet_schedule(&rt2x00dev->txstatus_tasklet);

}
