
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct ipr_ioa_cfg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_lock; scalar_t__ hostdata; } ;


 int ENTER ;
 int LEAVE ;
 int SUCCESS ;
 int ipr_cancel_op (struct scsi_cmnd*) ;
 int ipr_match_lun ;
 int ipr_wait_for_ops (struct ipr_ioa_cfg*,TYPE_2__*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ipr_eh_abort(struct scsi_cmnd *scsi_cmd)
{
 unsigned long flags;
 int rc;
 struct ipr_ioa_cfg *ioa_cfg;

 ENTER;

 ioa_cfg = (struct ipr_ioa_cfg *) scsi_cmd->device->host->hostdata;

 spin_lock_irqsave(scsi_cmd->device->host->host_lock, flags);
 rc = ipr_cancel_op(scsi_cmd);
 spin_unlock_irqrestore(scsi_cmd->device->host->host_lock, flags);

 if (rc == SUCCESS)
  rc = ipr_wait_for_ops(ioa_cfg, scsi_cmd->device, ipr_match_lun);
 LEAVE;
 return rc;
}
