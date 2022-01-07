
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sym_ucmd {int dummy; } ;
struct TYPE_4__ {unsigned long settle_time; scalar_t__ settle_time_valid; } ;
struct sym_hcb {TYPE_2__ s; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* request; } ;
struct TYPE_3__ {unsigned long timeout; } ;


 int SCSI_MLQUEUE_HOST_BUSY ;
 int SYM_CONF_TIMER_INTERVAL ;
 struct sym_hcb* SYM_SOFTC_PTR (struct scsi_cmnd*) ;
 struct sym_ucmd* SYM_UCMD_PTR (struct scsi_cmnd*) ;
 int jiffies ;
 int memset (struct sym_ucmd*,int ,int) ;
 int sym_queue_command (struct sym_hcb*,struct scsi_cmnd*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int sym53c8xx_queue_command_lck(struct scsi_cmnd *cmd,
     void (*done)(struct scsi_cmnd *))
{
 struct sym_hcb *np = SYM_SOFTC_PTR(cmd);
 struct sym_ucmd *ucp = SYM_UCMD_PTR(cmd);
 int sts = 0;

 cmd->scsi_done = done;
 memset(ucp, 0, sizeof(*ucp));





 if (np->s.settle_time_valid && cmd->request->timeout) {
  unsigned long tlimit = jiffies + cmd->request->timeout;
  tlimit -= SYM_CONF_TIMER_INTERVAL*2;
  if (time_after(np->s.settle_time, tlimit)) {
   np->s.settle_time = tlimit;
  }
 }

 if (np->s.settle_time_valid)
  return SCSI_MLQUEUE_HOST_BUSY;

 sts = sym_queue_command(np, cmd);
 if (sts)
  return SCSI_MLQUEUE_HOST_BUSY;
 return 0;
}
