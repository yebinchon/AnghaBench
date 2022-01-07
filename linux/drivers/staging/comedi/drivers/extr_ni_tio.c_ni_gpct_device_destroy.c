
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {struct ni_gpct_device* counters; struct ni_gpct_device* regs; } ;


 int kfree (struct ni_gpct_device*) ;

void ni_gpct_device_destroy(struct ni_gpct_device *counter_dev)
{
 if (!counter_dev)
  return;
 kfree(counter_dev->regs);
 kfree(counter_dev->counters);
 kfree(counter_dev);
}
