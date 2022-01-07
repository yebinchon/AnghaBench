
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct nvme_ns* queuedata; } ;
struct request {int ioprio; int cmd_flags; } ;
struct nvme_nvm_command {int dummy; } ;
struct nvme_ns {int dummy; } ;
struct nvme_command {int dummy; } ;
struct nvm_rq {int bio; } ;


 int IOPRIO_CLASS_BE ;
 int IOPRIO_NORM ;
 int IOPRIO_PRIO_VALUE (int ,int ) ;
 scalar_t__ IS_ERR (struct request*) ;
 int NVME_QID_ANY ;
 int REQ_FAILFAST_DRIVER ;
 int blk_rq_append_bio (struct request*,int *) ;
 struct request* nvme_alloc_request (struct request_queue*,struct nvme_command*,int ,int ) ;
 int nvme_nvm_rqtocmd (struct nvm_rq*,struct nvme_ns*,struct nvme_nvm_command*) ;

__attribute__((used)) static struct request *nvme_nvm_alloc_request(struct request_queue *q,
           struct nvm_rq *rqd,
           struct nvme_nvm_command *cmd)
{
 struct nvme_ns *ns = q->queuedata;
 struct request *rq;

 nvme_nvm_rqtocmd(rqd, ns, cmd);

 rq = nvme_alloc_request(q, (struct nvme_command *)cmd, 0, NVME_QID_ANY);
 if (IS_ERR(rq))
  return rq;

 rq->cmd_flags &= ~REQ_FAILFAST_DRIVER;

 if (rqd->bio)
  blk_rq_append_bio(rq, &rqd->bio);
 else
  rq->ioprio = IOPRIO_PRIO_VALUE(IOPRIO_CLASS_BE, IOPRIO_NORM);

 return rq;
}
