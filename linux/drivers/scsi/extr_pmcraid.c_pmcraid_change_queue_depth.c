
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int PMCRAID_MAX_CMD_PER_LUN ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;

__attribute__((used)) static int pmcraid_change_queue_depth(struct scsi_device *scsi_dev, int depth)
{
 if (depth > PMCRAID_MAX_CMD_PER_LUN)
  depth = PMCRAID_MAX_CMD_PER_LUN;
 return scsi_change_queue_depth(scsi_dev, depth);
}
