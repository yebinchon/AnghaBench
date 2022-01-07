
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ctrl; } ;
struct nvmet_rdma_queue {TYPE_1__ nvme_sq; } ;


 int nvmet_ctrl_fatal_error (scalar_t__) ;
 int nvmet_rdma_queue_disconnect (struct nvmet_rdma_queue*) ;

__attribute__((used)) static void nvmet_rdma_error_comp(struct nvmet_rdma_queue *queue)
{
 if (queue->nvme_sq.ctrl) {
  nvmet_ctrl_fatal_error(queue->nvme_sq.ctrl);
 } else {





  nvmet_rdma_queue_disconnect(queue);
 }
}
