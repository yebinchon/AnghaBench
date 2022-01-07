
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; } ;
struct request_queue {struct scsi_device* queuedata; int * mq_ops; } ;


 int get_device (int *) ;
 int scsi_mq_ops ;
 int scsi_mq_ops_no_commit ;

struct scsi_device *scsi_device_from_queue(struct request_queue *q)
{
 struct scsi_device *sdev = ((void*)0);

 if (q->mq_ops == &scsi_mq_ops_no_commit ||
     q->mq_ops == &scsi_mq_ops)
  sdev = q->queuedata;
 if (!sdev || !get_device(&sdev->sdev_gendev))
  sdev = ((void*)0);

 return sdev;
}
