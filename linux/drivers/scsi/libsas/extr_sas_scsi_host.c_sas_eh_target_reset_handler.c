
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct sas_internal {TYPE_1__* dft; } ;
struct domain_device {int dummy; } ;
struct Scsi_Host {scalar_t__ ehandler; int transportt; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;
struct TYPE_3__ {int (* lldd_I_T_nexus_reset ) (struct domain_device*) ;} ;


 int ENODEV ;
 int FAILED ;
 int SAS_DEV_RESET ;
 int SUCCESS ;
 int TMF_RESP_FUNC_COMPLETE ;
 int TMF_RESP_FUNC_SUCC ;
 struct domain_device* cmd_to_domain_dev (struct scsi_cmnd*) ;
 scalar_t__ current ;
 int sas_queue_reset (struct domain_device*,int ,int ,int ) ;
 int stub1 (struct domain_device*) ;
 struct sas_internal* to_sas_internal (int ) ;

int sas_eh_target_reset_handler(struct scsi_cmnd *cmd)
{
 int res;
 struct Scsi_Host *host = cmd->device->host;
 struct domain_device *dev = cmd_to_domain_dev(cmd);
 struct sas_internal *i = to_sas_internal(host->transportt);

 if (current != host->ehandler)
  return sas_queue_reset(dev, SAS_DEV_RESET, 0, 0);

 if (!i->dft->lldd_I_T_nexus_reset)
  return FAILED;

 res = i->dft->lldd_I_T_nexus_reset(dev);
 if (res == TMF_RESP_FUNC_SUCC || res == TMF_RESP_FUNC_COMPLETE ||
     res == -ENODEV)
  return SUCCESS;

 return FAILED;
}
