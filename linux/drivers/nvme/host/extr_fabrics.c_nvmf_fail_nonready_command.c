
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int cmd_flags; } ;
struct nvme_ctrl {scalar_t__ state; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int status; } ;


 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 scalar_t__ NVME_CTRL_DEAD ;
 scalar_t__ NVME_CTRL_DELETING ;
 int NVME_SC_HOST_PATH_ERROR ;
 int REQ_NVME_MPATH ;
 int blk_mq_start_request (struct request*) ;
 int blk_noretry_request (struct request*) ;
 int nvme_complete_rq (struct request*) ;
 TYPE_1__* nvme_req (struct request*) ;

blk_status_t nvmf_fail_nonready_command(struct nvme_ctrl *ctrl,
  struct request *rq)
{
 if (ctrl->state != NVME_CTRL_DELETING &&
     ctrl->state != NVME_CTRL_DEAD &&
     !blk_noretry_request(rq) && !(rq->cmd_flags & REQ_NVME_MPATH))
  return BLK_STS_RESOURCE;

 nvme_req(rq)->status = NVME_SC_HOST_PATH_ERROR;
 blk_mq_start_request(rq);
 nvme_complete_rq(rq);
 return BLK_STS_OK;
}
