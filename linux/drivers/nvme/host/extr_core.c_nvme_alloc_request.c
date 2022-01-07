
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int cmd_flags; } ;
struct nvme_command {int dummy; } ;
typedef int blk_mq_req_flags_t ;
struct TYPE_2__ {struct nvme_command* cmd; } ;


 scalar_t__ IS_ERR (struct request*) ;
 int NVME_QID_ANY ;
 int REQ_FAILFAST_DRIVER ;
 unsigned int REQ_OP_DRV_IN ;
 unsigned int REQ_OP_DRV_OUT ;
 struct request* blk_mq_alloc_request (struct request_queue*,unsigned int,int ) ;
 struct request* blk_mq_alloc_request_hctx (struct request_queue*,unsigned int,int ,int) ;
 int nvme_clear_nvme_request (struct request*) ;
 scalar_t__ nvme_is_write (struct nvme_command*) ;
 TYPE_1__* nvme_req (struct request*) ;

struct request *nvme_alloc_request(struct request_queue *q,
  struct nvme_command *cmd, blk_mq_req_flags_t flags, int qid)
{
 unsigned op = nvme_is_write(cmd) ? REQ_OP_DRV_OUT : REQ_OP_DRV_IN;
 struct request *req;

 if (qid == NVME_QID_ANY) {
  req = blk_mq_alloc_request(q, op, flags);
 } else {
  req = blk_mq_alloc_request_hctx(q, op, flags,
    qid ? qid - 1 : 0);
 }
 if (IS_ERR(req))
  return req;

 req->cmd_flags |= REQ_FAILFAST_DRIVER;
 nvme_clear_nvme_request(req);
 nvme_req(req)->cmd = cmd;

 return req;
}
