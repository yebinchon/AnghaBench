
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fib {int hw_fib_va; struct aac_dev* dev; } ;
struct TYPE_4__ {int * producer; } ;
struct aac_queue {TYPE_1__ headers; int numpending; } ;
struct aac_dev {TYPE_2__* queues; } ;
struct TYPE_6__ {unsigned long irq_mod; } ;
struct TYPE_5__ {struct aac_queue* queue; } ;


 size_t AdapNormCmdQueue ;
 int aac_adapter_notify (struct aac_dev*,size_t) ;
 TYPE_3__ aac_config ;
 int aac_queue_get (struct aac_dev*,scalar_t__*,size_t,int ,int,struct fib*,unsigned long*) ;
 int atomic_inc (int *) ;
 int cpu_to_le32 (scalar_t__) ;

int aac_rx_deliver_producer(struct fib * fib)
{
 struct aac_dev *dev = fib->dev;
 struct aac_queue *q = &dev->queues->queue[AdapNormCmdQueue];
 u32 Index;
 unsigned long nointr = 0;

 aac_queue_get( dev, &Index, AdapNormCmdQueue, fib->hw_fib_va, 1, fib, &nointr);

 atomic_inc(&q->numpending);
 *(q->headers.producer) = cpu_to_le32(Index + 1);
 if (!(nointr & aac_config.irq_mod))
  aac_adapter_notify(dev, AdapNormCmdQueue);

 return 0;
}
