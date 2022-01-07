
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_tcp_queue {int nr_cqe; TYPE_1__* ctrl; } ;
struct nvme_completion {int result; int status; int command_id; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {TYPE_2__ ctrl; } ;


 int EINVAL ;
 struct request* blk_mq_tag_to_rq (int ,int ) ;
 int dev_err (int ,char*,int ,int ) ;
 int nvme_end_request (struct request*,int ,int ) ;
 int nvme_tcp_error_recovery (TYPE_2__*) ;
 int nvme_tcp_queue_id (struct nvme_tcp_queue*) ;
 int nvme_tcp_tagset (struct nvme_tcp_queue*) ;

__attribute__((used)) static int nvme_tcp_process_nvme_cqe(struct nvme_tcp_queue *queue,
  struct nvme_completion *cqe)
{
 struct request *rq;

 rq = blk_mq_tag_to_rq(nvme_tcp_tagset(queue), cqe->command_id);
 if (!rq) {
  dev_err(queue->ctrl->ctrl.device,
   "queue %d tag 0x%x not found\n",
   nvme_tcp_queue_id(queue), cqe->command_id);
  nvme_tcp_error_recovery(&queue->ctrl->ctrl);
  return -EINVAL;
 }

 nvme_end_request(rq, cqe->status, cqe->result);
 queue->nr_cqe++;

 return 0;
}
