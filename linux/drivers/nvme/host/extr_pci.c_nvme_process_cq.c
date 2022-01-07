
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct nvme_queue {scalar_t__ cq_head; TYPE_1__* cqes; } ;
struct TYPE_2__ {unsigned int command_id; } ;


 scalar_t__ nvme_cqe_pending (struct nvme_queue*) ;
 int nvme_ring_cq_doorbell (struct nvme_queue*) ;
 int nvme_update_cq_head (struct nvme_queue*) ;

__attribute__((used)) static inline int nvme_process_cq(struct nvme_queue *nvmeq, u16 *start,
      u16 *end, unsigned int tag)
{
 int found = 0;

 *start = nvmeq->cq_head;
 while (nvme_cqe_pending(nvmeq)) {
  if (tag == -1U || nvmeq->cqes[nvmeq->cq_head].command_id == tag)
   found++;
  nvme_update_cq_head(nvmeq);
 }
 *end = nvmeq->cq_head;

 if (*start != *end)
  nvme_ring_cq_doorbell(nvmeq);
 return found;
}
