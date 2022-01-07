
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phase; scalar_t__ sent_command; scalar_t__ have_data_in; scalar_t__ Message; scalar_t__ Status; } ;
struct scsi_cmnd {TYPE_2__* device; TYPE_1__ SCp; } ;
struct fdomain {scalar_t__ base; struct scsi_cmnd* cur_cmd; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_6__ {int this_id; } ;
struct TYPE_5__ {TYPE_3__* host; } ;


 int ACTL_ARB ;
 int ACTL_IRQEN ;
 int BIT (int ) ;
 int ICTL_ARB ;
 int PARITY_MASK ;
 scalar_t__ REG_ACTL ;
 scalar_t__ REG_BCTL ;
 scalar_t__ REG_ICTL ;
 scalar_t__ REG_SCSI_DATA_NOACK ;
 int fdomain_make_bus_idle (struct fdomain*) ;
 int in_arbitration ;
 int outb (int,scalar_t__) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 struct fdomain* shost_priv (TYPE_3__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int fdomain_queue(struct Scsi_Host *sh, struct scsi_cmnd *cmd)
{
 struct fdomain *fd = shost_priv(cmd->device->host);
 unsigned long flags;

 cmd->SCp.Status = 0;
 cmd->SCp.Message = 0;
 cmd->SCp.have_data_in = 0;
 cmd->SCp.sent_command = 0;
 cmd->SCp.phase = in_arbitration;
 scsi_set_resid(cmd, scsi_bufflen(cmd));

 spin_lock_irqsave(sh->host_lock, flags);

 fd->cur_cmd = cmd;

 fdomain_make_bus_idle(fd);


 outb(0, fd->base + REG_ICTL);
 outb(0, fd->base + REG_BCTL);

 outb(BIT(cmd->device->host->this_id), fd->base + REG_SCSI_DATA_NOACK);
 outb(ICTL_ARB, fd->base + REG_ICTL);

 outb(ACTL_ARB | ACTL_IRQEN | PARITY_MASK, fd->base + REG_ACTL);

 spin_unlock_irqrestore(sh->host_lock, flags);

 return 0;
}
