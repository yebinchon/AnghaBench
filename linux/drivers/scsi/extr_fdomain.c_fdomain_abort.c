
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct fdomain {TYPE_3__* cur_cmd; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_5__ {int phase; } ;
struct TYPE_6__ {int result; TYPE_2__ SCp; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;


 int DID_ABORT ;
 int FAILED ;
 int SUCCESS ;
 int aborted ;
 int fdomain_finish_cmd (struct fdomain*,int) ;
 int fdomain_make_bus_idle (struct fdomain*) ;
 struct fdomain* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int fdomain_abort(struct scsi_cmnd *cmd)
{
 struct Scsi_Host *sh = cmd->device->host;
 struct fdomain *fd = shost_priv(sh);
 unsigned long flags;

 if (!fd->cur_cmd)
  return FAILED;

 spin_lock_irqsave(sh->host_lock, flags);

 fdomain_make_bus_idle(fd);
 fd->cur_cmd->SCp.phase |= aborted;
 fd->cur_cmd->result = DID_ABORT << 16;


 fdomain_finish_cmd(fd, DID_ABORT << 16);
 spin_unlock_irqrestore(sh->host_lock, flags);
 return SUCCESS;
}
