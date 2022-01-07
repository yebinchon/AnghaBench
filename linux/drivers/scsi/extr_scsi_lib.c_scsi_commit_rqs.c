
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct Scsi_Host* host; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct blk_mq_hw_ctx {int queue_num; struct request_queue* queue; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int (* commit_rqs ) (struct Scsi_Host*,int ) ;} ;


 int stub1 (struct Scsi_Host*,int ) ;

__attribute__((used)) static void scsi_commit_rqs(struct blk_mq_hw_ctx *hctx)
{
 struct request_queue *q = hctx->queue;
 struct scsi_device *sdev = q->queuedata;
 struct Scsi_Host *shost = sdev->host;

 shost->hostt->commit_rqs(shost, hctx->queue_num);
}
