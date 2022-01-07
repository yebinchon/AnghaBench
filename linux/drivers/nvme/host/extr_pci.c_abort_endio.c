
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_queue {TYPE_2__* dev; } ;
struct nvme_iod {struct nvme_queue* nvmeq; } ;
typedef int blk_status_t ;
struct TYPE_6__ {int status; } ;
struct TYPE_4__ {int abort_limit; int device; } ;
struct TYPE_5__ {TYPE_1__ ctrl; } ;


 int atomic_inc (int *) ;
 int blk_mq_free_request (struct request*) ;
 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 int dev_warn (int ,char*,int ) ;
 TYPE_3__* nvme_req (struct request*) ;

__attribute__((used)) static void abort_endio(struct request *req, blk_status_t error)
{
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
 struct nvme_queue *nvmeq = iod->nvmeq;

 dev_warn(nvmeq->dev->ctrl.device,
   "Abort status: 0x%x", nvme_req(req)->status);
 atomic_inc(&nvmeq->dev->ctrl.abort_limit);
 blk_mq_free_request(req);
}
