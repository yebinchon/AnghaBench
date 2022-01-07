
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_completion {scalar_t__ command_id; int result; int status; } ;
struct nvme_tcp_rsp_pdu {struct nvme_completion cqe; } ;
struct nvme_tcp_queue {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int ctrl; } ;


 scalar_t__ NVME_AQ_BLK_MQ_DEPTH ;
 int nvme_complete_async_event (int *,int ,int *) ;
 int nvme_tcp_process_nvme_cqe (struct nvme_tcp_queue*,struct nvme_completion*) ;
 scalar_t__ nvme_tcp_queue_id (struct nvme_tcp_queue*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvme_tcp_handle_comp(struct nvme_tcp_queue *queue,
  struct nvme_tcp_rsp_pdu *pdu)
{
 struct nvme_completion *cqe = &pdu->cqe;
 int ret = 0;







 if (unlikely(nvme_tcp_queue_id(queue) == 0 &&
     cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH))
  nvme_complete_async_event(&queue->ctrl->ctrl, cqe->status,
    &cqe->result);
 else
  ret = nvme_tcp_process_nvme_cqe(queue, cqe);

 return ret;
}
