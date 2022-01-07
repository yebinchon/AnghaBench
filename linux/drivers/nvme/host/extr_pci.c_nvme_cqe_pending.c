
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_queue {size_t cq_head; int cq_phase; TYPE_1__* cqes; } ;
struct TYPE_2__ {int status; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline bool nvme_cqe_pending(struct nvme_queue *nvmeq)
{
 return (le16_to_cpu(nvmeq->cqes[nvmeq->cq_head].status) & 1) ==
   nvmeq->cq_phase;
}
