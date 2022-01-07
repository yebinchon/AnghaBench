
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ nvme_cqe_pending (struct nvme_queue*) ;

__attribute__((used)) static irqreturn_t nvme_irq_check(int irq, void *data)
{
 struct nvme_queue *nvmeq = data;
 if (nvme_cqe_pending(nvmeq))
  return IRQ_WAKE_THREAD;
 return IRQ_NONE;
}
