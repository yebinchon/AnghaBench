
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int ARCMSR_MAX_CMD_PERLUN ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;

__attribute__((used)) static int arcmsr_adjust_disk_queue_depth(struct scsi_device *sdev, int queue_depth)
{
 if (queue_depth > ARCMSR_MAX_CMD_PERLUN)
  queue_depth = ARCMSR_MAX_CMD_PERLUN;
 return scsi_change_queue_depth(sdev, queue_depth);
}
