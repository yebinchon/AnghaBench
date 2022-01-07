
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct request_queue* request_queue; TYPE_1__* host; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct TYPE_2__ {int tag_set; } ;


 scalar_t__ IS_ERR (struct request_queue*) ;
 int QUEUE_FLAG_SCSI_PASSTHROUGH ;
 int __scsi_init_queue (TYPE_1__*,struct request_queue*) ;
 struct request_queue* blk_mq_init_queue (int *) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;

struct request_queue *scsi_mq_alloc_queue(struct scsi_device *sdev)
{
 sdev->request_queue = blk_mq_init_queue(&sdev->host->tag_set);
 if (IS_ERR(sdev->request_queue))
  return ((void*)0);

 sdev->request_queue->queuedata = sdev;
 __scsi_init_queue(sdev->host, sdev->request_queue);
 blk_queue_flag_set(QUEUE_FLAG_SCSI_PASSTHROUGH, sdev->request_queue);
 return sdev->request_queue;
}
