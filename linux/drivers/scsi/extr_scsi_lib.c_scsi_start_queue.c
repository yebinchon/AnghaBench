
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;


 int blk_mq_unquiesce_queue (struct request_queue*) ;

void scsi_start_queue(struct scsi_device *sdev)
{
 struct request_queue *q = sdev->request_queue;

 blk_mq_unquiesce_queue(q);
}
