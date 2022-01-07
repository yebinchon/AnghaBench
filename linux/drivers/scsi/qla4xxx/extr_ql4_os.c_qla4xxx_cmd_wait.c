
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int nx_reset_timeout; TYPE_1__* host; int hardware_lock; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_2__ {scalar_t__ can_queue; } ;


 scalar_t__ CMD_SP (struct scsi_cmnd*) ;
 int DEBUG2 (int ) ;
 scalar_t__ HZ ;
 int KERN_INFO ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 scalar_t__ WAIT_CMD_TOV ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 scalar_t__ jiffies ;
 int msleep (int) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,scalar_t__) ;
 struct scsi_cmnd* scsi_host_find_tag (TYPE_1__*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_after_eq (scalar_t__,unsigned long) ;

__attribute__((used)) static int qla4xxx_cmd_wait(struct scsi_qla_host *ha)
{
 uint32_t index = 0;
 unsigned long flags;
 struct scsi_cmnd *cmd;
 unsigned long wtime;
 uint32_t wtmo;

 if (is_qla40XX(ha))
  wtmo = WAIT_CMD_TOV;
 else
  wtmo = ha->nx_reset_timeout / 2;

 wtime = jiffies + (wtmo * HZ);

 DEBUG2(ql4_printk(KERN_INFO, ha,
     "Wait up to %u seconds for cmds to complete\n",
     wtmo));

 while (!time_after_eq(jiffies, wtime)) {
  spin_lock_irqsave(&ha->hardware_lock, flags);

  for (index = 0; index < ha->host->can_queue; index++) {
   cmd = scsi_host_find_tag(ha->host, index);






   if (cmd != ((void*)0) && CMD_SP(cmd))
    break;
  }
  spin_unlock_irqrestore(&ha->hardware_lock, flags);


  if (index == ha->host->can_queue)
   return QLA_SUCCESS;

  msleep(1000);
 }


 return QLA_ERROR;
}
