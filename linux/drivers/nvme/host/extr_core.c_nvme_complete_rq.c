
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int cmd_flags; int q; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_4__ {TYPE_1__* ctrl; int status; } ;
struct TYPE_3__ {int comp_seen; scalar_t__ kas; } ;


 scalar_t__ BLK_STS_OK ;
 int REQ_NVME_MPATH ;
 int blk_mq_end_request (struct request*,scalar_t__) ;
 scalar_t__ blk_path_error (scalar_t__) ;
 int blk_queue_dying (int ) ;
 scalar_t__ nvme_error_status (int ) ;
 int nvme_failover_req (struct request*) ;
 TYPE_2__* nvme_req (struct request*) ;
 scalar_t__ nvme_req_needs_retry (struct request*) ;
 int nvme_retry_req (struct request*) ;
 int nvme_trace_bio_complete (struct request*,scalar_t__) ;
 int trace_nvme_complete_rq (struct request*) ;
 scalar_t__ unlikely (int) ;

void nvme_complete_rq(struct request *req)
{
 blk_status_t status = nvme_error_status(nvme_req(req)->status);

 trace_nvme_complete_rq(req);

 if (nvme_req(req)->ctrl->kas)
  nvme_req(req)->ctrl->comp_seen = 1;

 if (unlikely(status != BLK_STS_OK && nvme_req_needs_retry(req))) {
  if ((req->cmd_flags & REQ_NVME_MPATH) &&
      blk_path_error(status)) {
   nvme_failover_req(req);
   return;
  }

  if (!blk_queue_dying(req->q)) {
   nvme_retry_req(req);
   return;
  }
 }

 nvme_trace_bio_complete(req, status);
 blk_mq_end_request(req, status);
}
