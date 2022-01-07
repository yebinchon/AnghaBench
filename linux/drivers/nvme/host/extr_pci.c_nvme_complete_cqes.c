
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct nvme_queue {scalar_t__ q_depth; } ;


 int nvme_handle_cqe (struct nvme_queue*,scalar_t__) ;

__attribute__((used)) static void nvme_complete_cqes(struct nvme_queue *nvmeq, u16 start, u16 end)
{
 while (start != end) {
  nvme_handle_cqe(nvmeq, start);
  if (++start == nvmeq->q_depth)
   start = 0;
 }
}
