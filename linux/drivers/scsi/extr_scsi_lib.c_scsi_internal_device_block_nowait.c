
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;


 int SDEV_BLOCK ;
 int SDEV_CREATED_BLOCK ;
 int blk_mq_quiesce_queue_nowait (struct request_queue*) ;
 int scsi_device_set_state (struct scsi_device*,int ) ;

int scsi_internal_device_block_nowait(struct scsi_device *sdev)
{
 struct request_queue *q = sdev->request_queue;
 int err = 0;

 err = scsi_device_set_state(sdev, SDEV_BLOCK);
 if (err) {
  err = scsi_device_set_state(sdev, SDEV_CREATED_BLOCK);

  if (err)
   return err;
 }






 blk_mq_quiesce_queue_nowait(q);
 return 0;
}
