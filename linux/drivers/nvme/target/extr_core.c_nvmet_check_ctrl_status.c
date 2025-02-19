
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct nvmet_req {TYPE_3__* sq; } ;
struct TYPE_5__ {int opcode; } ;
struct nvme_command {TYPE_2__ common; } ;
struct TYPE_6__ {int qid; TYPE_1__* ctrl; } ;
struct TYPE_4__ {int cc; int csts; } ;


 int NVME_CC_ENABLE ;
 int NVME_CSTS_RDY ;
 int NVME_SC_CMD_SEQ_ERROR ;
 int NVME_SC_DNR ;
 int pr_err (char*,int ,int ) ;
 scalar_t__ unlikely (int) ;

u16 nvmet_check_ctrl_status(struct nvmet_req *req, struct nvme_command *cmd)
{
 if (unlikely(!(req->sq->ctrl->cc & NVME_CC_ENABLE))) {
  pr_err("got cmd %d while CC.EN == 0 on qid = %d\n",
         cmd->common.opcode, req->sq->qid);
  return NVME_SC_CMD_SEQ_ERROR | NVME_SC_DNR;
 }

 if (unlikely(!(req->sq->ctrl->csts & NVME_CSTS_RDY))) {
  pr_err("got cmd %d while CSTS.RDY == 0 on qid = %d\n",
         cmd->common.opcode, req->sq->qid);
  return NVME_SC_CMD_SEQ_ERROR | NVME_SC_DNR;
 }
 return 0;
}
