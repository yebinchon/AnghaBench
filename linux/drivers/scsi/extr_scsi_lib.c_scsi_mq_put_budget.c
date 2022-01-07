
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int device_busy; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void scsi_mq_put_budget(struct blk_mq_hw_ctx *hctx)
{
 struct request_queue *q = hctx->queue;
 struct scsi_device *sdev = q->queuedata;

 atomic_dec(&sdev->device_busy);
}
