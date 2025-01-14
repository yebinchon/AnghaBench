
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct nvme_queue {scalar_t__ sq_tail; scalar_t__ q_depth; scalar_t__ last_sq_tail; int q_db; int dbbuf_sq_ei; int dbbuf_sq_db; } ;


 scalar_t__ nvme_dbbuf_update_and_check_event (scalar_t__,int ,int ) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static inline void nvme_write_sq_db(struct nvme_queue *nvmeq, bool write_sq)
{
 if (!write_sq) {
  u16 next_tail = nvmeq->sq_tail + 1;

  if (next_tail == nvmeq->q_depth)
   next_tail = 0;
  if (next_tail != nvmeq->last_sq_tail)
   return;
 }

 if (nvme_dbbuf_update_and_check_event(nvmeq->sq_tail,
   nvmeq->dbbuf_sq_db, nvmeq->dbbuf_sq_ei))
  writel(nvmeq->sq_tail, nvmeq->q_db);
 nvmeq->last_sq_tail = nvmeq->sq_tail;
}
