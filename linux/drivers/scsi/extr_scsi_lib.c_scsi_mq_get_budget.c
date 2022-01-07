
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int device_busy; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;


 int SCSI_QUEUE_DELAY ;
 scalar_t__ atomic_read (int *) ;
 int blk_mq_delay_run_hw_queue (struct blk_mq_hw_ctx*,int ) ;
 scalar_t__ scsi_dev_queue_ready (struct request_queue*,struct scsi_device*) ;
 int scsi_device_blocked (struct scsi_device*) ;

__attribute__((used)) static bool scsi_mq_get_budget(struct blk_mq_hw_ctx *hctx)
{
 struct request_queue *q = hctx->queue;
 struct scsi_device *sdev = q->queuedata;

 if (scsi_dev_queue_ready(q, sdev))
  return 1;

 if (atomic_read(&sdev->device_busy) == 0 && !scsi_device_blocked(sdev))
  blk_mq_delay_run_hw_queue(hctx, SCSI_QUEUE_DELAY);
 return 0;
}
