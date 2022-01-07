
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__ SCp; scalar_t__ result; } ;
struct mvumi_hba {TYPE_2__* instancet; } ;
struct mvumi_cmd {struct scsi_cmnd* scmd; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;
struct TYPE_4__ {int (* fire_cmd ) (struct mvumi_hba*,struct mvumi_cmd*) ;} ;


 int SCSI_MLQUEUE_HOST_BUSY ;
 int mvumi_build_frame (struct mvumi_hba*,struct scsi_cmnd*,struct mvumi_cmd*) ;
 struct mvumi_cmd* mvumi_get_cmd (struct mvumi_hba*) ;
 int mvumi_return_cmd (struct mvumi_hba*,struct mvumi_cmd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct mvumi_hba*,struct mvumi_cmd*) ;
 int stub2 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mvumi_queue_command(struct Scsi_Host *shost,
     struct scsi_cmnd *scmd)
{
 struct mvumi_cmd *cmd;
 struct mvumi_hba *mhba;
 unsigned long irq_flags;

 spin_lock_irqsave(shost->host_lock, irq_flags);

 mhba = (struct mvumi_hba *) shost->hostdata;
 scmd->result = 0;
 cmd = mvumi_get_cmd(mhba);
 if (unlikely(!cmd)) {
  spin_unlock_irqrestore(shost->host_lock, irq_flags);
  return SCSI_MLQUEUE_HOST_BUSY;
 }

 if (unlikely(mvumi_build_frame(mhba, scmd, cmd)))
  goto out_return_cmd;

 cmd->scmd = scmd;
 scmd->SCp.ptr = (char *) cmd;
 mhba->instancet->fire_cmd(mhba, cmd);
 spin_unlock_irqrestore(shost->host_lock, irq_flags);
 return 0;

out_return_cmd:
 mvumi_return_cmd(mhba, cmd);
 scmd->scsi_done(scmd);
 spin_unlock_irqrestore(shost->host_lock, irq_flags);
 return 0;
}
