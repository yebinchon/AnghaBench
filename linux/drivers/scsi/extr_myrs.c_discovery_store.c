
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma_ctrl_to_host; int no_autosense; } ;
struct TYPE_4__ {int ioctl_opcode; TYPE_1__ control; int id; int opcode; } ;
union myrs_cmd_mbox {TYPE_2__ common; } ;
struct myrs_cmdblk {unsigned char status; union myrs_cmd_mbox mbox; } ;
struct myrs_hba {int needs_update; int monitor_work; int work_q; scalar_t__ next_evseq; int dcmd_mutex; struct myrs_cmdblk dcmd_blk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int KERN_INFO ;
 int MYRS_CMD_OP_IOCTL ;
 int MYRS_DCMD_TAG ;
 int MYRS_IOCTL_START_DISCOVERY ;
 unsigned char MYRS_STATUS_SUCCESS ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int flush_delayed_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int myrs_exec_cmd (struct myrs_hba*,struct myrs_cmdblk*) ;
 int myrs_reset_cmd (struct myrs_cmdblk*) ;
 int queue_delayed_work (int ,int *,int) ;
 int shost_printk (int ,struct Scsi_Host*,char*,...) ;
 struct myrs_hba* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static ssize_t discovery_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct myrs_hba *cs = shost_priv(shost);
 struct myrs_cmdblk *cmd_blk;
 union myrs_cmd_mbox *mbox;
 unsigned char status;

 mutex_lock(&cs->dcmd_mutex);
 cmd_blk = &cs->dcmd_blk;
 myrs_reset_cmd(cmd_blk);
 mbox = &cmd_blk->mbox;
 mbox->common.opcode = MYRS_CMD_OP_IOCTL;
 mbox->common.id = MYRS_DCMD_TAG;
 mbox->common.control.dma_ctrl_to_host = 1;
 mbox->common.control.no_autosense = 1;
 mbox->common.ioctl_opcode = MYRS_IOCTL_START_DISCOVERY;
 myrs_exec_cmd(cs, cmd_blk);
 status = cmd_blk->status;
 mutex_unlock(&cs->dcmd_mutex);
 if (status != MYRS_STATUS_SUCCESS) {
  shost_printk(KERN_INFO, shost,
        "Discovery Not Initiated, status %02X\n",
        status);
  return -EINVAL;
 }
 shost_printk(KERN_INFO, shost, "Discovery Initiated\n");
 cs->next_evseq = 0;
 cs->needs_update = 1;
 queue_delayed_work(cs->work_q, &cs->monitor_work, 1);
 flush_delayed_work(&cs->monitor_work);
 shost_printk(KERN_INFO, shost, "Discovery Completed\n");

 return count;
}
