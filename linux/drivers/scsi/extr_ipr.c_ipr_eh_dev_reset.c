
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {struct ipr_resource_entry* device; } ;
struct ipr_resource_entry {scalar_t__ sata_port; TYPE_1__* host; struct ipr_resource_entry* hostdata; } ;
struct ipr_ioa_cfg {int dummy; } ;
struct TYPE_2__ {int host_lock; scalar_t__ hostdata; } ;


 int FAILED ;
 int SUCCESS ;
 int __ipr_eh_dev_reset (struct scsi_cmnd*) ;
 scalar_t__ ipr_is_gata (struct ipr_resource_entry*) ;
 int ipr_match_lun ;
 int ipr_match_res ;
 int ipr_wait_for_ops (struct ipr_ioa_cfg*,struct ipr_resource_entry*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int ipr_eh_dev_reset(struct scsi_cmnd *cmd)
{
 int rc;
 struct ipr_ioa_cfg *ioa_cfg;
 struct ipr_resource_entry *res;

 ioa_cfg = (struct ipr_ioa_cfg *) cmd->device->host->hostdata;
 res = cmd->device->hostdata;

 if (!res)
  return FAILED;

 spin_lock_irq(cmd->device->host->host_lock);
 rc = __ipr_eh_dev_reset(cmd);
 spin_unlock_irq(cmd->device->host->host_lock);

 if (rc == SUCCESS) {
  if (ipr_is_gata(res) && res->sata_port)
   rc = ipr_wait_for_ops(ioa_cfg, res, ipr_match_res);
  else
   rc = ipr_wait_for_ops(ioa_cfg, cmd->device, ipr_match_lun);
 }

 return rc;
}
