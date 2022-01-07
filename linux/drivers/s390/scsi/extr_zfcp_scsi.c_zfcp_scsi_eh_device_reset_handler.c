
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cmnd {struct scsi_device* device; } ;


 int FCP_TMF_LUN_RESET ;
 int zfcp_scsi_task_mgmt_function (struct scsi_device*,int ) ;

__attribute__((used)) static int zfcp_scsi_eh_device_reset_handler(struct scsi_cmnd *scpnt)
{
 struct scsi_device *sdev = scpnt->device;

 return zfcp_scsi_task_mgmt_function(sdev, FCP_TMF_LUN_RESET);
}
