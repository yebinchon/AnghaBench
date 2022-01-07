
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; } ;


 int CXLFLASH_MAX_CMDS_PER_LUN ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;

__attribute__((used)) static int cxlflash_change_queue_depth(struct scsi_device *sdev, int qdepth)
{

 if (qdepth > CXLFLASH_MAX_CMDS_PER_LUN)
  qdepth = CXLFLASH_MAX_CMDS_PER_LUN;

 scsi_change_queue_depth(sdev, qdepth);
 return sdev->queue_depth;
}
