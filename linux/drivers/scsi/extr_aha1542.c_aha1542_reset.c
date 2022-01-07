
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct aha1542_hostdata {TYPE_2__* mb; struct scsi_cmnd** int_cmds; } ;
struct Scsi_Host {int host_lock; int host_no; int io_port; } ;
struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_3__ {scalar_t__ soft_reset; struct Scsi_Host* host; } ;


 int AHA1542_MAILBOXES ;
 int CDF ;
 int CONTROL (int ) ;
 int DF ;
 int DIAGF ;
 int FAILED ;
 int HRST ;
 int IDLE ;
 int INVDCMD ;
 int KERN_WARNING ;
 int STATMASK ;
 int STATUS (int ) ;
 int STST ;
 int SUCCESS ;
 int aha1542_free_cmd (struct scsi_cmnd*) ;
 int outb (int,int ) ;
 int setup_mailboxes (struct Scsi_Host*) ;
 int shost_printk (int ,struct Scsi_Host*,char*,int ) ;
 struct aha1542_hostdata* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_mask (int ,int ,int ,int,int ) ;

__attribute__((used)) static int aha1542_reset(struct scsi_cmnd *cmd, u8 reset_cmd)
{
 struct Scsi_Host *sh = cmd->device->host;
 struct aha1542_hostdata *aha1542 = shost_priv(sh);
 unsigned long flags;
 int i;

 spin_lock_irqsave(sh->host_lock, flags);






 outb(reset_cmd, CONTROL(cmd->device->host->io_port));

 if (!wait_mask(STATUS(cmd->device->host->io_port),
      STATMASK, IDLE, STST | DIAGF | INVDCMD | DF | CDF, 0)) {
  spin_unlock_irqrestore(sh->host_lock, flags);
  return FAILED;
 }





 if (reset_cmd & HRST)
  setup_mailboxes(cmd->device->host);







 shost_printk(KERN_WARNING, cmd->device->host, "Sent BUS RESET to scsi host %d\n", cmd->device->host->host_no);

 for (i = 0; i < AHA1542_MAILBOXES; i++) {
  if (aha1542->int_cmds[i] != ((void*)0)) {
   struct scsi_cmnd *tmp_cmd;
   tmp_cmd = aha1542->int_cmds[i];

   if (tmp_cmd->device->soft_reset) {






    continue;
   }
   aha1542_free_cmd(tmp_cmd);
   aha1542->int_cmds[i] = ((void*)0);
   aha1542->mb[i].status = 0;
  }
 }

 spin_unlock_irqrestore(sh->host_lock, flags);
 return SUCCESS;
}
