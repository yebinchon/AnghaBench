
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_request {int retries; scalar_t__* cmd; int cmd_len; } ;
struct scsi_device {int request_queue; } ;
struct request {int timeout; int q; int rq_flags; } ;


 scalar_t__ ALLOW_MEDIUM_REMOVAL ;
 int COMMAND_SIZE (scalar_t__) ;
 int HZ ;
 scalar_t__ IS_ERR (struct request*) ;
 int REQ_OP_SCSI_IN ;
 int RQF_QUIET ;
 scalar_t__ SCSI_REMOVAL_PREVENT ;
 int blk_execute_rq_nowait (int ,int *,struct request*,int,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int eh_lock_door_done ;
 struct scsi_request* scsi_req (struct request*) ;

__attribute__((used)) static void scsi_eh_lock_door(struct scsi_device *sdev)
{
 struct request *req;
 struct scsi_request *rq;

 req = blk_get_request(sdev->request_queue, REQ_OP_SCSI_IN, 0);
 if (IS_ERR(req))
  return;
 rq = scsi_req(req);

 rq->cmd[0] = ALLOW_MEDIUM_REMOVAL;
 rq->cmd[1] = 0;
 rq->cmd[2] = 0;
 rq->cmd[3] = 0;
 rq->cmd[4] = SCSI_REMOVAL_PREVENT;
 rq->cmd[5] = 0;
 rq->cmd_len = COMMAND_SIZE(rq->cmd[0]);

 req->rq_flags |= RQF_QUIET;
 req->timeout = 10 * HZ;
 rq->retries = 5;

 blk_execute_rq_nowait(req->q, ((void*)0), req, 1, eh_lock_door_done);
}
