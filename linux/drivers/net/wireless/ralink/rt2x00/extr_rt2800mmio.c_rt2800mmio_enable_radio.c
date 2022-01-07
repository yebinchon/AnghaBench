
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int EIO ;
 int rt2800_enable_radio (struct rt2x00_dev*) ;
 int rt2800_wait_wpdma_ready (struct rt2x00_dev*) ;
 int rt2800mmio_init_queues (struct rt2x00_dev*) ;
 scalar_t__ unlikely (int ) ;

int rt2800mmio_enable_radio(struct rt2x00_dev *rt2x00dev)
{

 rt2800_wait_wpdma_ready(rt2x00dev);

 if (unlikely(rt2800mmio_init_queues(rt2x00dev)))
  return -EIO;

 return rt2800_enable_radio(rt2x00dev);
}
