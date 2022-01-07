
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int tag; } ;
struct nvme_ctrl {int device; } ;
struct TYPE_2__ {int status; } ;


 int NVME_SC_HOST_PATH_ERROR ;
 int blk_mq_complete_request (struct request*) ;
 scalar_t__ blk_mq_request_completed (struct request*) ;
 int dev_dbg_ratelimited (int ,char*,int ) ;
 TYPE_1__* nvme_req (struct request*) ;

bool nvme_cancel_request(struct request *req, void *data, bool reserved)
{
 dev_dbg_ratelimited(((struct nvme_ctrl *) data)->device,
    "Cancelling I/O %d", req->tag);


 if (blk_mq_request_completed(req))
  return 1;

 nvme_req(req)->status = NVME_SC_HOST_PATH_ERROR;
 blk_mq_complete_request(req);
 return 1;
}
