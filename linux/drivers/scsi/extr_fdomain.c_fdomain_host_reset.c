
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct fdomain {int base; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int SUCCESS ;
 int fdomain_reset (int ) ;
 struct fdomain* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int fdomain_host_reset(struct scsi_cmnd *cmd)
{
 struct Scsi_Host *sh = cmd->device->host;
 struct fdomain *fd = shost_priv(sh);
 unsigned long flags;

 spin_lock_irqsave(sh->host_lock, flags);
 fdomain_reset(fd->base);
 spin_unlock_irqrestore(sh->host_lock, flags);
 return SUCCESS;
}
