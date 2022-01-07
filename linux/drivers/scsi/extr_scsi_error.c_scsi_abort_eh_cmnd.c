
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int hostt; } ;


 scalar_t__ SUCCESS ;
 scalar_t__ scsi_try_bus_device_reset (struct scsi_cmnd*) ;
 scalar_t__ scsi_try_bus_reset (struct scsi_cmnd*) ;
 int scsi_try_host_reset (struct scsi_cmnd*) ;
 scalar_t__ scsi_try_target_reset (struct scsi_cmnd*) ;
 scalar_t__ scsi_try_to_abort_cmd (int ,struct scsi_cmnd*) ;

__attribute__((used)) static void scsi_abort_eh_cmnd(struct scsi_cmnd *scmd)
{
 if (scsi_try_to_abort_cmd(scmd->device->host->hostt, scmd) != SUCCESS)
  if (scsi_try_bus_device_reset(scmd) != SUCCESS)
   if (scsi_try_target_reset(scmd) != SUCCESS)
    if (scsi_try_bus_reset(scmd) != SUCCESS)
     scsi_try_host_reset(scmd);
}
