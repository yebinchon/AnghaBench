
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct request {TYPE_3__* q; } ;
struct nvme_ns {TYPE_1__* ctrl; } ;
struct TYPE_6__ {struct nvme_ns* queuedata; } ;
struct TYPE_5__ {int status; int retries; } ;
struct TYPE_4__ {int* crdt; } ;


 int NVME_SC_CRD ;
 int blk_mq_delay_kick_requeue_list (TYPE_3__*,unsigned long) ;
 int blk_mq_requeue_request (struct request*,int) ;
 TYPE_2__* nvme_req (struct request*) ;

__attribute__((used)) static void nvme_retry_req(struct request *req)
{
 struct nvme_ns *ns = req->q->queuedata;
 unsigned long delay = 0;
 u16 crd;


 crd = (nvme_req(req)->status & NVME_SC_CRD) >> 11;
 if (ns && crd)
  delay = ns->ctrl->crdt[crd - 1] * 100;

 nvme_req(req)->retries++;
 blk_mq_requeue_request(req, 0);
 blk_mq_delay_kick_requeue_list(req->q, delay);
}
