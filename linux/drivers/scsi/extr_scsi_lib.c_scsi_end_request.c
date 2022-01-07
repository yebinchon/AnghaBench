
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int requeue_work; TYPE_1__* host; struct request_queue* request_queue; } ;
struct scsi_cmnd {int flags; int rcu; struct scsi_device* device; } ;
struct request_queue {int q_usage_counter; } ;
struct request {int rq_disk; } ;
typedef int blk_status_t ;
struct TYPE_4__ {scalar_t__ single_lun; } ;
struct TYPE_3__ {int starved_list; } ;


 int SCMD_INITIALIZED ;
 int WARN_ON_ONCE (int) ;
 int __blk_mq_end_request (struct request*,int ) ;
 int add_disk_randomness (int ) ;
 struct scsi_cmnd* blk_mq_rq_to_pdu (struct request*) ;
 int blk_mq_run_hw_queues (struct request_queue*,int) ;
 scalar_t__ blk_queue_add_random (struct request_queue*) ;
 int blk_rq_is_scsi (struct request*) ;
 scalar_t__ blk_update_request (struct request*,int ,unsigned int) ;
 int destroy_rcu_head (int *) ;
 int kblockd_schedule_work (int *) ;
 int list_empty (int *) ;
 int percpu_ref_get (int *) ;
 int percpu_ref_put (int *) ;
 int scsi_mq_uninit_cmd (struct scsi_cmnd*) ;
 TYPE_2__* scsi_target (struct scsi_device*) ;

__attribute__((used)) static bool scsi_end_request(struct request *req, blk_status_t error,
  unsigned int bytes)
{
 struct scsi_cmnd *cmd = blk_mq_rq_to_pdu(req);
 struct scsi_device *sdev = cmd->device;
 struct request_queue *q = sdev->request_queue;

 if (blk_update_request(req, error, bytes))
  return 1;

 if (blk_queue_add_random(q))
  add_disk_randomness(req->rq_disk);

 if (!blk_rq_is_scsi(req)) {
  WARN_ON_ONCE(!(cmd->flags & SCMD_INITIALIZED));
  cmd->flags &= ~SCMD_INITIALIZED;
 }







 destroy_rcu_head(&cmd->rcu);
 scsi_mq_uninit_cmd(cmd);





 percpu_ref_get(&q->q_usage_counter);

 __blk_mq_end_request(req, error);

 if (scsi_target(sdev)->single_lun ||
     !list_empty(&sdev->host->starved_list))
  kblockd_schedule_work(&sdev->requeue_work);
 else
  blk_mq_run_hw_queues(q, 1);

 percpu_ref_put(&q->q_usage_counter);
 return 0;
}
