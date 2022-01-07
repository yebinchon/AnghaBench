
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_request {int flags; TYPE_2__* cmd; } ;
struct nvme_ctrl {int state; } ;
struct TYPE_3__ {int fctype; } ;
struct TYPE_4__ {TYPE_1__ fabrics; } ;





 int NVME_REQ_USERCMD ;
 int blk_rq_is_passthrough (struct request*) ;
 int nvme_fabrics_type_connect ;
 int nvme_is_fabrics (TYPE_2__*) ;
 struct nvme_request* nvme_req (struct request*) ;

bool __nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
  bool queue_live)
{
 struct nvme_request *req = nvme_req(rq);





 if (!blk_rq_is_passthrough(rq) || (req->flags & NVME_REQ_USERCMD))
  return 0;





 switch (ctrl->state) {
 case 128:
 case 130:
  if (nvme_is_fabrics(req->cmd) &&
      req->cmd->fabrics.fctype == nvme_fabrics_type_connect)
   return 1;
  break;
 default:
  break;
 case 129:
  return 0;
 }

 return queue_live;
}
