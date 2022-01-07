
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wd719x_scb {int phys; } ;
struct wd719x {TYPE_3__* sh; TYPE_1__* pdev; } ;
struct scsi_cmnd {int tag; TYPE_2__* device; } ;
struct TYPE_6__ {int host_lock; } ;
struct TYPE_5__ {int lun; int id; int host; } ;
struct TYPE_4__ {int dev; } ;


 int DID_ABORT ;
 int FAILED ;
 int SUCCESS ;
 int WD719X_CMD_ABORT ;
 int dev_info (int *,char*,int ) ;
 struct wd719x_scb* scsi_cmd_priv (struct scsi_cmnd*) ;
 struct wd719x* shost_priv (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wd719x_direct_cmd (struct wd719x*,int,int ,int ,int ,int ,int ) ;
 int wd719x_finish_cmd (struct wd719x_scb*,int ) ;

__attribute__((used)) static int wd719x_abort(struct scsi_cmnd *cmd)
{
 int action, result;
 unsigned long flags;
 struct wd719x_scb *scb = scsi_cmd_priv(cmd);
 struct wd719x *wd = shost_priv(cmd->device->host);

 dev_info(&wd->pdev->dev, "abort command, tag: %x\n", cmd->tag);

 action = WD719X_CMD_ABORT;

 spin_lock_irqsave(wd->sh->host_lock, flags);
 result = wd719x_direct_cmd(wd, action, cmd->device->id,
       cmd->device->lun, cmd->tag, scb->phys, 0);
 wd719x_finish_cmd(scb, DID_ABORT);
 spin_unlock_irqrestore(wd->sh->host_lock, flags);
 if (result)
  return FAILED;

 return SUCCESS;
}
