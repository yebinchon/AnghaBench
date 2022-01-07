
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned short ldev_num; } ;
struct TYPE_9__ {int state; TYPE_3__ ldev; int ioctl_opcode; } ;
struct TYPE_6__ {int dma_ctrl_to_host; int no_autosense; } ;
struct TYPE_7__ {TYPE_1__ control; int id; int opcode; } ;
union myrs_cmd_mbox {TYPE_4__ set_devstate; TYPE_2__ common; } ;
struct scsi_device {scalar_t__ channel; struct myrs_pdev_info* hostdata; int lun; int id; int host; } ;
struct myrs_pdev_info {int dev_state; unsigned short ldev_num; int rsvd13; } ;
struct myrs_ldev_info {int dev_state; unsigned short ldev_num; int rsvd13; } ;
struct myrs_cmdblk {unsigned char status; union myrs_cmd_mbox mbox; } ;
struct myrs_hba {TYPE_5__* ctlr_info; int dcmd_mutex; struct myrs_cmdblk dcmd_blk; } ;
struct myrs_devmap {unsigned short ldev_num; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef enum myrs_devstate { ____Placeholder_myrs_devstate } myrs_devstate ;
struct TYPE_10__ {scalar_t__ physchan_present; } ;


 size_t EINVAL ;
 size_t ENXIO ;
 int KERN_INFO ;
 int MYRS_CMD_OP_IOCTL ;
 int MYRS_DCMD_TAG ;
 int MYRS_DEVICE_OFFLINE ;
 int MYRS_DEVICE_ONLINE ;
 int MYRS_DEVICE_STANDBY ;
 int MYRS_IOCTL_SET_DEVICE_STATE ;
 unsigned char MYRS_STATUS_SUCCESS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int myrs_devstate_name (int) ;
 int myrs_exec_cmd (struct myrs_hba*,struct myrs_cmdblk*) ;
 int myrs_reset_cmd (struct myrs_cmdblk*) ;
 unsigned char myrs_translate_pdev (struct myrs_hba*,scalar_t__,int ,int ,struct myrs_devmap*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,...) ;
 struct myrs_hba* shost_priv (int ) ;
 int strncmp (char const*,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t raid_state_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrs_hba *cs = shost_priv(sdev->host);
 struct myrs_cmdblk *cmd_blk;
 union myrs_cmd_mbox *mbox;
 enum myrs_devstate new_state;
 unsigned short ldev_num;
 unsigned char status;

 if (!strncmp(buf, "offline", 7) ||
     !strncmp(buf, "kill", 4))
  new_state = MYRS_DEVICE_OFFLINE;
 else if (!strncmp(buf, "online", 6))
  new_state = MYRS_DEVICE_ONLINE;
 else if (!strncmp(buf, "standby", 7))
  new_state = MYRS_DEVICE_STANDBY;
 else
  return -EINVAL;

 if (sdev->channel < cs->ctlr_info->physchan_present) {
  struct myrs_pdev_info *pdev_info = sdev->hostdata;
  struct myrs_devmap *pdev_devmap =
   (struct myrs_devmap *)&pdev_info->rsvd13;

  if (pdev_info->dev_state == new_state) {
   sdev_printk(KERN_INFO, sdev,
        "Device already in %s\n",
        myrs_devstate_name(new_state));
   return count;
  }
  status = myrs_translate_pdev(cs, sdev->channel, sdev->id,
          sdev->lun, pdev_devmap);
  if (status != MYRS_STATUS_SUCCESS)
   return -ENXIO;
  ldev_num = pdev_devmap->ldev_num;
 } else {
  struct myrs_ldev_info *ldev_info = sdev->hostdata;

  if (ldev_info->dev_state == new_state) {
   sdev_printk(KERN_INFO, sdev,
        "Device already in %s\n",
        myrs_devstate_name(new_state));
   return count;
  }
  ldev_num = ldev_info->ldev_num;
 }
 mutex_lock(&cs->dcmd_mutex);
 cmd_blk = &cs->dcmd_blk;
 myrs_reset_cmd(cmd_blk);
 mbox = &cmd_blk->mbox;
 mbox->common.opcode = MYRS_CMD_OP_IOCTL;
 mbox->common.id = MYRS_DCMD_TAG;
 mbox->common.control.dma_ctrl_to_host = 1;
 mbox->common.control.no_autosense = 1;
 mbox->set_devstate.ioctl_opcode = MYRS_IOCTL_SET_DEVICE_STATE;
 mbox->set_devstate.state = new_state;
 mbox->set_devstate.ldev.ldev_num = ldev_num;
 myrs_exec_cmd(cs, cmd_blk);
 status = cmd_blk->status;
 mutex_unlock(&cs->dcmd_mutex);
 if (status == MYRS_STATUS_SUCCESS) {
  if (sdev->channel < cs->ctlr_info->physchan_present) {
   struct myrs_pdev_info *pdev_info = sdev->hostdata;

   pdev_info->dev_state = new_state;
  } else {
   struct myrs_ldev_info *ldev_info = sdev->hostdata;

   ldev_info->dev_state = new_state;
  }
  sdev_printk(KERN_INFO, sdev,
       "Set device state to %s\n",
       myrs_devstate_name(new_state));
  return count;
 }
 sdev_printk(KERN_INFO, sdev,
      "Failed to set device state to %s, status 0x%02x\n",
      myrs_devstate_name(new_state), status);
 return -EINVAL;
}
