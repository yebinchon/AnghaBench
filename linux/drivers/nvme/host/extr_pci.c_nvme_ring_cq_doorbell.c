
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvme_queue {TYPE_1__* dev; scalar_t__ q_db; int dbbuf_cq_ei; int dbbuf_cq_db; int cq_head; } ;
struct TYPE_2__ {scalar_t__ db_stride; } ;


 scalar_t__ nvme_dbbuf_update_and_check_event (int ,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void nvme_ring_cq_doorbell(struct nvme_queue *nvmeq)
{
 u16 head = nvmeq->cq_head;

 if (nvme_dbbuf_update_and_check_event(head, nvmeq->dbbuf_cq_db,
           nvmeq->dbbuf_cq_ei))
  writel(head, nvmeq->q_db + nvmeq->dev->db_stride);
}
