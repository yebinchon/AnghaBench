
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int IBMVFC_MAX_CMDS_PER_LUN ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;

__attribute__((used)) static int ibmvfc_change_queue_depth(struct scsi_device *sdev, int qdepth)
{
 if (qdepth > IBMVFC_MAX_CMDS_PER_LUN)
  qdepth = IBMVFC_MAX_CMDS_PER_LUN;

 return scsi_change_queue_depth(sdev, qdepth);
}
