
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {int cq_head; int q_depth; int cq_phase; } ;



__attribute__((used)) static inline void nvme_update_cq_head(struct nvme_queue *nvmeq)
{
 if (nvmeq->cq_head == nvmeq->q_depth - 1) {
  nvmeq->cq_head = 0;
  nvmeq->cq_phase = !nvmeq->cq_phase;
 } else {
  nvmeq->cq_head++;
 }
}
