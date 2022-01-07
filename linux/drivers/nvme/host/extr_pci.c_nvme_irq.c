
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct nvme_queue {scalar_t__ cq_head; scalar_t__ last_cq_head; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int nvme_complete_cqes (struct nvme_queue*,scalar_t__,scalar_t__) ;
 int nvme_process_cq (struct nvme_queue*,scalar_t__*,scalar_t__*,int) ;
 int rmb () ;
 int wmb () ;

__attribute__((used)) static irqreturn_t nvme_irq(int irq, void *data)
{
 struct nvme_queue *nvmeq = data;
 irqreturn_t ret = IRQ_NONE;
 u16 start, end;





 rmb();
 if (nvmeq->cq_head != nvmeq->last_cq_head)
  ret = IRQ_HANDLED;
 nvme_process_cq(nvmeq, &start, &end, -1);
 nvmeq->last_cq_head = nvmeq->cq_head;
 wmb();

 if (start != end) {
  nvme_complete_cqes(nvmeq, start, end);
  return IRQ_HANDLED;
 }

 return ret;
}
