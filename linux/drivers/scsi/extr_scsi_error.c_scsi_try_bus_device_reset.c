
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_host_template {int (* eh_device_reset_handler ) (struct scsi_cmnd*) ;} ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {struct scsi_host_template* hostt; } ;


 int FAILED ;
 int SUCCESS ;
 int __scsi_report_device_reset (TYPE_2__*,int *) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int scsi_try_bus_device_reset(struct scsi_cmnd *scmd)
{
 int rtn;
 struct scsi_host_template *hostt = scmd->device->host->hostt;

 if (!hostt->eh_device_reset_handler)
  return FAILED;

 rtn = hostt->eh_device_reset_handler(scmd);
 if (rtn == SUCCESS)
  __scsi_report_device_reset(scmd->device, ((void*)0));
 return rtn;
}
