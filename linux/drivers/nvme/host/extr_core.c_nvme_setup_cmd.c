
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int tag; } ;
struct nvme_ns {int dummy; } ;
struct TYPE_3__ {int command_id; } ;
struct nvme_command {TYPE_1__ common; } ;
typedef int blk_status_t ;
struct TYPE_4__ {int cmd; } ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;







 int WARN_ON_ONCE (int) ;
 int memcpy (struct nvme_command*,int ,int) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_clear_nvme_request (struct request*) ;
 TYPE_2__* nvme_req (struct request*) ;
 int nvme_setup_discard (struct nvme_ns*,struct request*,struct nvme_command*) ;
 int nvme_setup_flush (struct nvme_ns*,struct nvme_command*) ;
 int nvme_setup_rw (struct nvme_ns*,struct request*,struct nvme_command*) ;
 int nvme_setup_write_zeroes (struct nvme_ns*,struct request*,struct nvme_command*) ;
 int req_op (struct request*) ;
 int trace_nvme_setup_cmd (struct request*,struct nvme_command*) ;

blk_status_t nvme_setup_cmd(struct nvme_ns *ns, struct request *req,
  struct nvme_command *cmd)
{
 blk_status_t ret = BLK_STS_OK;

 nvme_clear_nvme_request(req);

 memset(cmd, 0, sizeof(*cmd));
 switch (req_op(req)) {
 case 133:
 case 132:
  memcpy(cmd, nvme_req(req)->cmd, sizeof(*cmd));
  break;
 case 131:
  nvme_setup_flush(ns, cmd);
  break;
 case 128:
  ret = nvme_setup_write_zeroes(ns, req, cmd);
  break;
 case 134:
  ret = nvme_setup_discard(ns, req, cmd);
  break;
 case 130:
 case 129:
  ret = nvme_setup_rw(ns, req, cmd);
  break;
 default:
  WARN_ON_ONCE(1);
  return BLK_STS_IOERR;
 }

 cmd->common.command_id = req->tag;
 trace_nvme_setup_cmd(req, cmd);
 return ret;
}
