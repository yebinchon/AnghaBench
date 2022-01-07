
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct Scsi_Host* host; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct Scsi_Host {int dummy; } ;


 scalar_t__ blk_queue_dying (struct request_queue*) ;
 scalar_t__ scsi_device_is_busy (struct scsi_device*) ;
 scalar_t__ scsi_host_in_recovery (struct Scsi_Host*) ;

__attribute__((used)) static bool scsi_mq_lld_busy(struct request_queue *q)
{
 struct scsi_device *sdev = q->queuedata;
 struct Scsi_Host *shost;

 if (blk_queue_dying(q))
  return 0;

 shost = sdev->host;







 if (scsi_host_in_recovery(shost) || scsi_device_is_busy(sdev))
  return 1;

 return 0;
}
