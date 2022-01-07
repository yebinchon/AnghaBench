
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {scalar_t__ result; TYPE_1__* device; } ;
struct lpfc_vport {scalar_t__ stat_data_blocked; int stat_data_enabled; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {TYPE_2__* lat_data; } ;
struct lpfc_io_buf {struct lpfc_rport_data* rdata; scalar_t__ start_time; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {scalar_t__ bucket_type; unsigned long bucket_step; int bucket_base; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;
struct TYPE_4__ {int cmd_count; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 scalar_t__ LPFC_LINEAR_BUCKET ;
 int LPFC_MAX_BUCKET_COUNT ;
 scalar_t__ LPFC_NO_BUCKET ;
 scalar_t__ jiffies ;
 unsigned long jiffies_to_msecs (long) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void
lpfc_update_stats(struct lpfc_hba *phba, struct lpfc_io_buf *lpfc_cmd)
{
 struct lpfc_rport_data *rdata;
 struct lpfc_nodelist *pnode;
 struct scsi_cmnd *cmd = lpfc_cmd->pCmd;
 unsigned long flags;
 struct Scsi_Host *shost = cmd->device->host;
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 unsigned long latency;
 int i;

 if (!vport->stat_data_enabled ||
     vport->stat_data_blocked ||
     (cmd->result))
  return;

 latency = jiffies_to_msecs((long)jiffies - (long)lpfc_cmd->start_time);
 rdata = lpfc_cmd->rdata;
 pnode = rdata->pnode;

 spin_lock_irqsave(shost->host_lock, flags);
 if (!pnode ||
     !pnode->lat_data ||
     (phba->bucket_type == LPFC_NO_BUCKET)) {
  spin_unlock_irqrestore(shost->host_lock, flags);
  return;
 }

 if (phba->bucket_type == LPFC_LINEAR_BUCKET) {
  i = (latency + phba->bucket_step - 1 - phba->bucket_base)/
   phba->bucket_step;

  if (i < 0)
   i = 0;
  else if (i >= LPFC_MAX_BUCKET_COUNT)
   i = LPFC_MAX_BUCKET_COUNT - 1;
 } else {
  for (i = 0; i < LPFC_MAX_BUCKET_COUNT-1; i++)
   if (latency <= (phba->bucket_base +
    ((1<<i)*phba->bucket_step)))
    break;
 }

 pnode->lat_data[i].cmd_count++;
 spin_unlock_irqrestore(shost->host_lock, flags);
}
