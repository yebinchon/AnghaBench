
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int state_mutex; struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;


 int blk_mq_quiesce_queue (struct request_queue*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_internal_device_block_nowait (struct scsi_device*) ;

__attribute__((used)) static int scsi_internal_device_block(struct scsi_device *sdev)
{
 struct request_queue *q = sdev->request_queue;
 int err;

 mutex_lock(&sdev->state_mutex);
 err = scsi_internal_device_block_nowait(sdev);
 if (err == 0)
  blk_mq_quiesce_queue(q);
 mutex_unlock(&sdev->state_mutex);

 return err;
}
