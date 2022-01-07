
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_host_template {int (* eh_target_reset_handler ) (struct scsi_cmnd*) ;} ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {int host_lock; struct scsi_host_template* hostt; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int FAILED ;
 int SUCCESS ;
 int __scsi_report_device_reset ;
 int __starget_for_each_device (int ,int *,int ) ;
 int scsi_target (TYPE_1__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int scsi_try_target_reset(struct scsi_cmnd *scmd)
{
 unsigned long flags;
 int rtn;
 struct Scsi_Host *host = scmd->device->host;
 struct scsi_host_template *hostt = host->hostt;

 if (!hostt->eh_target_reset_handler)
  return FAILED;

 rtn = hostt->eh_target_reset_handler(scmd);
 if (rtn == SUCCESS) {
  spin_lock_irqsave(host->host_lock, flags);
  __starget_for_each_device(scsi_target(scmd->device), ((void*)0),
       __scsi_report_device_reset);
  spin_unlock_irqrestore(host->host_lock, flags);
 }

 return rtn;
}
